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
  local width=25 percent=0 filled empty bar display_text

  if (( total > 0 )); then
    percent=$(( current * 100 / total ))
  fi
  filled=$(( current * width / total ))
  empty=$(( width - filled ))

  bar=$(printf '%0.s#' $(seq 1 "$filled"))
  bar+=$(printf '%0.s-' $(seq 1 "$empty"))
  display_text=$(printf '%-25.25s' "$text")

  printf '\r\033[K%s [%s] [%s] %d/%d (%d%%)' "$label" "$display_text" "$bar" "$current" "$total" "$percent"
}

pattern_to_regex() {
  # Escape regex special chars except '*', then replace '*' with '.*'
  local pattern=$1
  local escaped
  escaped=$(printf '%s' "$pattern" | sed -e 's/[][(){}.^$+?|\\]/\\&/g' -e 's/\*/.*/g')
  printf '^%s$' "$escaped"
}

sanitize_path() {
  # Ensure we only delete files/dirs within /etc or user's home, no wildcards
  local path=$1
  if [[ "$path" == /etc/* || "$path" == "$HOME/"* ]]; then
    printf '%s\n' "$path"
  else
    # Refuse to delete anything outside trusted paths
    printf 'warning: unsafe path skipped: %s\n' "$path" >&2
  fi
}

remove_package() {
  local pkg=$1
  # Skip if package not installed, avoid unnecessary dnf output
  if ! rpm -q "$pkg" >/dev/null 2>&1; then
    return 0
  fi

  if ! dnf remove "$pkg"; then
    return 1
  fi
}

autoremove_dependencies() {
  # Remove orphaned dependencies quietly
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

  mapfile -t patterns < <(grep -vE '^\s*#|^\s*$' "$FILE" | grep -E '^[a-zA-Z0-9._\-\*]+$' || true)
  if (( ${#patterns[@]} == 0 )); then
    printf 'No valid patterns found. Exiting.\n'
    exit 0
  fi

  mapfile -t installed_packages < <(rpm -qa)

  local total_patterns=${#patterns[@]}
  local matched_pkgs=()

  for i in "${!patterns[@]}"; do
    local pattern="${patterns[i]}"
    local regex
    regex=$(pattern_to_regex "$pattern")

    progress_bar $((i+1)) "$total_patterns" "Searching for" "$pattern"

    # Use exact or regex match based on presence of '*'
    if [[ "$pattern" == *'*'* ]]; then
      mapfile -t matches < <(printf '%s\n' "${installed_packages[@]}" | grep -Ei "$regex" || true)
    else
      mapfile -t matches < <(printf '%s\n' "${installed_packages[@]}" | grep -iFx "$pattern" || true)
    fi

    if (( ${#matches[@]} > 0 )); then
      matched_pkgs+=("${matches[@]}")
    fi
  done
  printf '\n'

  if (( ${#matched_pkgs[@]} == 0 )); then
    printf 'No installed packages matched any given patterns. Exiting.\n'
    exit 0
  fi

  mapfile -t pkgs < <(printf '%s\n' "${matched_pkgs[@]}" | sort -u)
  local total_pkgs=${#pkgs[@]}

  printf '\n\nThe following %d packages match your patterns:\n\n' "$total_pkgs"
  for pkg in "${pkgs[@]}"; do
    printf '  - %s\n' "$pkg"
  done

  printf '\n'
  read -rp "Proceed with removal of all listed packages? [y/N]: " yn
  if [[ ! "$yn" =~ ^[Yy]$ ]]; then
    printf 'Package removal cancelled by user.\n'
    exit 0
  fi

  printf '\nStarting package removals one by one with individual prompts...\n'

  local removal_cancelled=0

  for pkg in "${pkgs[@]}"; do
    printf '\nReady to remove package: %s\n' "$pkg"
    if ! remove_package "$pkg"; then
      printf 'Warning: Removal of package %q failed or was cancelled.\n' "$pkg"
      removal_cancelled=1
    fi
  done

  if (( removal_cancelled == 0 )); then
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

main
