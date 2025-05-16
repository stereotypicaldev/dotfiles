#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

readonly FILE="${1:-packages.txt}"

cleanup_on_signal() {
  printf '\n%s\n' "Script interrupted. Exiting." >&2
  exit 130
}

error_exit() {
  printf 'Error: %s\n' "$*" >&2
  exit 1
}

check_dependencies() {
  local cmd
  for cmd in rpm dnf grep sort journalctl printf; do
    if ! command -v "$cmd" >/dev/null 2>&1; then
      error_exit "Required command '$cmd' not found"
    fi
  done
}

progress_bar() {
  local current=$1 total=$2 label=$3 text=$4
  local width=30 percent=0 filled empty bar display_text

  if (( total > 0 )); then
    percent=$(( current * 100 / total ))
  fi
  filled=$(( current * width / total ))
  empty=$(( width - filled ))

  bar=$(printf '%0.s#' $(seq 1 "$filled"))
  bar+=$(printf '%0.s-' $(seq 1 "$empty"))
  display_text=$(printf '%-30.30s' "$text")

  printf '\r%s [%s] %s %d/%d (%d%%)' "$label" "$display_text" "$bar" "$current" "$total" "$percent"
}

pattern_to_regex() {
  # Escape regex special chars except '*', then replace '*' with '.*'
  local pattern=$1
  local escaped
  escaped=$(printf '%s' "$pattern" | sed -e 's/[][(){}.^$+?|\\]/\\&/g' -e 's/\*/.*/g')
  printf '^%s$' "$escaped"
}

sanitize_path() {
  # Only allow removing files within /etc or user's home directory
  local path=$1
  if [[ "$path" == /etc/* || "$path" == "$HOME/"* ]]; then
    printf '%s\n' "$path"
  else
    printf 'warning: unsafe path skipped: %s\n' "$path" >&2
  fi
}

remove_package() {
  local pkg=$1
  if ! rpm -q "$pkg" >/dev/null 2>&1; then
    return 0
  fi

  if ! dnf remove -y "$pkg"; then
    return 1
  fi
}

autoremove_dependencies() {
  if ! dnf autoremove -y; then
    return 1
  fi
}

remove_paths() {
  local path
  while IFS= read -r path; do
    path=$(sanitize_path "$path") || continue
    if [[ -e "$path" ]]; then
      printf 'Removing leftover config: %s\n' "$path"
      rm -rf -- "$path"
    fi
  done
}

main() {
  trap cleanup_on_signal SIGINT SIGTERM

  check_dependencies

  if [[ $EUID -ne 0 ]]; then
    error_exit "Please run as root (e.g. sudo)."
  fi

  if [[ ! -f "$FILE" ]]; then
    error_exit "File not found: $FILE"
  fi

  printf 'Reading package patterns from %q...\n\n' "$FILE"

  # Read patterns, skipping empty lines/comments and only valid chars in patterns
  mapfile -t patterns < <(grep -vE '^\s*#|^\s*$' "$FILE" | grep -E '^[a-zA-Z0-9._\-\*]+$' || true)
  if (( ${#patterns[@]} == 0 )); then
    printf 'No valid patterns found. Exiting.\n'
    exit 0
  fi

  # Load all installed packages
  mapfile -t installed_packages < <(rpm -qa)

  printf 'Loaded %d installed packages.\n' "${#installed_packages[@]}"
  printf 'Loaded %d package patterns.\n\n' "${#patterns[@]}"

  # Build combined regex for all patterns with prefix matching logic
  combined_regex=""
  for pattern in "${patterns[@]}"; do
    if [[ "$pattern" == *'*'* ]]; then
      # Escape regex specials and replace * with .*
      escaped=$(printf '%s' "$pattern" | sed -e 's/[][(){}.^$+?|\\]/\\&/g' -e 's/\*/.*/g')
    else
      # Escape regex specials only and match prefix
      escaped=$(printf '%s' "$pattern" | sed -e 's/[][(){}.^$+?|\\]/\\&/g')
      escaped="${escaped}.*"
    fi
    if [[ -z "$combined_regex" ]]; then
      combined_regex="$escaped"
    else
      combined_regex="${combined_regex}|${escaped}"
    fi
  done

  # Removed printing of combined regex pattern to reduce clutter

  printf 'Matching installed packages against combined regex...\n'

  mapfile -t pkgs < <(printf '%s\n' "${installed_packages[@]}" | grep -Ei "^($combined_regex)" | sort -u)

  printf 'Matched %d packages.\n\n' "${#pkgs[@]}"

  if (( ${#pkgs[@]} == 0 )); then
    printf 'No installed packages matched any given patterns. Exiting.\n'
    exit 0
  fi

  printf '\nThe following %d packages match your patterns:\n\n' "${#pkgs[@]}"
  for pkg in "${pkgs[@]}"; do
    printf '  - %s\n' "$pkg"
  done

  printf '\n'
  read -rp "Proceed with removal of all listed packages? [y/N]: " yn
  if [[ ! "$yn" =~ ^[Yy]$ ]]; then
    printf 'Package removal cancelled by user.\n'
    exit 0
  fi

  printf '\nStarting package removals one by one...\n'

  local removal_failed=0

  for pkg in "${pkgs[@]}"; do
    printf '\nRemoving package: %s\n' "$pkg"
    if ! remove_package "$pkg"; then
      printf 'Warning: Removal of package %q failed or was cancelled.\n' "$pkg"
      removal_failed=1
    fi
  done

  if (( removal_failed == 0 )); then
    printf '\nRemoving orphaned dependencies...\n'
    if autoremove_dependencies; then
      printf 'Orphaned dependencies removed.\n'
    else
      printf 'Warning: Failed to remove orphaned dependencies.\n'
    fi

    printf '\nCleaning residual config files...\n'
    for pkg in "${pkgs[@]}"; do
      {
        rpm -qc "$pkg" 2>/dev/null || true
        rpm -qd "$pkg" 2>/dev/null | grep -E '^/etc/' || true
      } | sort -u | remove_paths
    done

    printf '\nCleaning user config files (home directory)...\n'
    for pkg in "${pkgs[@]}"; do
      local user_cfgs=("$HOME/.${pkg}" "$HOME/.config/${pkg}")
      for uc in "${user_cfgs[@]}"; do
        if [[ -e "$uc" ]]; then
          printf 'Removing user config: %s\n' "$uc"
          rm -rf -- "$uc"
        fi
      done
    done

    printf '\nCleaning dnf cache and journald logs...\n\n'

    dnf clean all
    journalctl --vacuum-time=7d >/dev/null 2>&1 || true

  else
    printf '\nSome packages failed or were cancelled; skipping cleanup steps.\n'
  fi

  printf '\n📦 Packages deleted. Peace restored. Carry on and prosper! :P\n'
}

main "$@"
