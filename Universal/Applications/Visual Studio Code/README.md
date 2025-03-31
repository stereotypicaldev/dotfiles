# Knowledge Base for Visual Studio Code

This repository is used as a virtual storage space for everything I have managed to track down and use over the years, in my effort of creating, optimizing and maintaining my Visual Studio Code Instance,

## Table of Contents

- [Knowledge Base for Visual Studio Code](#knowledge-base-for-visual-studio-code)
  - [Table of Contents](#table-of-contents)
  - [To-Do](#to-do)
- [Requirements](#requirements)
- [Features](#features)
  - [Task Runner](#task-runner)
    - [Resources To-Do](#resources-to-do)
- [Shortcuts](#shortcuts)
  - [Workflow Shortcuts](#workflow-shortcuts)
    - [Navigation](#navigation)
    - [Menu Bar](#menu-bar)
    - [Terminal](#terminal)
  - [Editor Splits](#editor-splits)
  - [Editor Shortcuts](#editor-shortcuts)
  - [Editing Shortcuts](#editing-shortcuts)
    - [Lines](#lines)
    - [Words](#words)
    - [Blocks](#blocks)
  - [Formatting](#formatting)
    - [Code Navigation](#code-navigation)
    - [Files](#files)
    - [Multicursor](#multicursor)
    - [Uncategorized](#uncategorized)
  - [Resources](#resources)
- [My Settings](#my-settings)
    - [Resources](#resources-1)
  - [Editor](#editor)
    - [JSON Only](#json-only)
    - [Scrollbar](#scrollbar)
    - [Formatter](#formatter)
    - [Zoom](#zoom)
    - [Rules](#rules)
    - [Indentation](#indentation)
    - [Word Wrap](#word-wrap)
    - [Cursor](#cursor)
    - [Minimap](#minimap)
  - [Files](#files-1)
  - [Outline](#outline)
  - [Terminal](#terminal-1)
  - [Git](#git)
  - [WorkBench](#workbench)
    - [Preview](#preview)
    - [List](#list)
    - [Window](#window)
    - [Breadcrumbs](#breadcrumbs)
    - [Editor](#editor-1)
  - [Explorer](#explorer)
  - [Extensions](#extensions)
  - [Snippets](#snippets)
  - [Extensions](#extensions-1)
  - [Keyboard Shortcuts](#keyboard-shortcuts)
  - [Keyboard Shorctus](#keyboard-shorctus)
    - [Tips](#tips)
  - [General Tips - Knowledge Base](#general-tips---knowledge-base)
  - [Window Instances](#window-instances)
  - [Uncategorized](#uncategorized-1)
  - [Diff Editor](#diff-editor)
  - [Chat](#chat)
  - [Personallization](#personallization)
  - [Integrated Terminal](#integrated-terminal)
    - [Oh My Posh](#oh-my-posh)
      - [Installation](#installation)
      - [Requirements](#requirements-1)
      - [Theme](#theme)
      - [Update](#update)
      - [Configuration](#configuration)
        - [Create Profile](#create-profile)
        - [Edit Confirguatrion](#edit-confirguatrion)
        - [Troubleshooting Oh My Posh](#troubleshooting-oh-my-posh)
        - [Troubleshooting Powershell](#troubleshooting-powershell)
  - [Resources](#resources-2)

## To-Do

- Find a Way to Turn a Selected Line into Markdown Link (or something else)
- Learn More About Snippets
- Configure a Global Hotkey to Use for Shortcuts
- Configue oh-my-posh - Improve Terminal
- Create an alias for code in powershell to do codium instead.

# Requirements

- [Microsoft Power Toys](https://learn.microsoft.com/en-us/windows/powertoys/)

I am using a Keychron K2 Mac Keyboard on my setup, which has some language issues with Windows stock American English Layout, so I remap couple of keys.

1. Install PowerToys

2. Go to Keyboard Mapper

3. Add the Following Rule

```

Shift + 3 to # Symbol in All Apps

```

# Features

## Task Runner

### Resources To-Do

- [Integrate with External Tasks via Tasks](https://code.visualstudio.com/docs/editor/tasks)

- [VSCode: 10 Most Useful Tips And Tricks - Code Runner Chapter](https://www.youtube.com/watch?v=cVGMldhVRxU&list=PL0w2UavVM8W-nw8qz-JnZwXLjzldoTX6f&t=533s)

# Shortcuts

## Workflow Shortcuts

- Show Settings - `Ctrl` + `,`

- Command Pallet - `Ctrl` + `Shift` + `P`

- Show/Hide Sidebar - `Ctrl` + `B`

- Show/Hide Lower Pane - `Ctrl` + `J`

- Show/Hide Intelisense Autocomplete Feature - `Ctrl` + `Space`

- Zen Mode - `Ctrl` + `K` then `F`

- Reopen/Recover Last Opened File - `Ctrl` + `Shift` + `T`

### Navigation

- Search Files by name/Go to File - `Ctrl` + `P`

- Switch Between Open Tabs - `Ctrl` + `Tab` (Optional : `Shift` to Tab Backwards)

- Switch Between Open Tabs vol.2 - `Alt` + `1` to `9` (1 = First Tab, 2 = Second Tab etc. etc.)

- Switch Between Editor Windows - `Ctrl` + `1` to `9` (1 = First Editor, 2 = Second Editor etc. etc.)

- Switch to Previous File - Hold `Ctrl` then `P x 2 (twice)` then let go of `Ctrl`

- Move Editor to Previous Group - `Ctrl` + `Alt` + `Right Arrow`

- Focus and Move through Breadcrumbs - `Ctrl` + `Shift` + `.` (same as Go to Symbol through Accesibillity - Maybe Fix)

### Menu Bar

Pressing `Alt` anywhere in VS Code, will set forus to Menu Bar, pressing `Enter` will open it.

- Open Menu Bar under File Menu - `Alt` + `F`

- Open Menu Bar under Edit Menu - `ALt` + `E`

- Open Menu Bar under Selection - `Alt` + `S`

- Open Menu Bar under View - `Alt` + `V`

- Open Menu Bar under Terminal = `Alt` + `T`

### Terminal

- Show/Hide Terminal - `Ctrl` + `'`

- Clear Terminal - `Ctrl` + `L`

- Open New Terminal (when already in One) - `Ctrl` + `Shift` + `'`

- Navigate Betweeen Open Terminals - `Ctrl` + `Page Up` or `Page Down`

- Split Terminal (Open Terminals Side to Side) - `Ctrl` + `Shift` + `5`

- Open New External Terminal - `Ctrl` + `Shift` + `C`

## Editor Splits

- Split Editor Down -

- Split Editor Left -

- Split Editor Right -

## Editor Shortcuts

- Close Tab - `Ctrl` + `W`

- Open a Right Side View - `Ctrl` + `\` (next to right shift)

- Zoom In/Out - `Ctrl` + `+` or `-`

## Editing Shortcuts

### Lines

- Select Current Line - `Ctrl` + `L`

- Delete Current Line - `Ctrl` + `Shift` + `K`

- Add New Line (from Anywhere in Line) - `Ctrl` + `Enter`

- Indent/Outdent Current Line - `Ctrl` + `[` or `]`

- Comment Line - `Ctrl` + `Slash (/)` (next to Right Shift)

- Duplicate Current Line Upwards/Downwards - `Shift` + `Alt` + `Arrow ↓ Down` or `Arrow ↑ Up`

- Move the Line Upwards or Downwards - Hold `Alt` (or `Command`) and `Arrow ↓ Down` or `Arrow ↑ Up`.

- Go to the end of Line - `End`

- Add a new line below, even if you in the middle of a line - `Ctrl` + `Enter`

<br>

- Highlight Everything from Cursor to End of Line - `Shift` + `End`

- Switch Betweeen Quotes - `Ctrl` + `Backslash` (Requirement - [Toggle Quotes Extension](https://open-vsx.org/extension/BriteSnow/vscode-toggle-quotes))

<br>

- Extend your Selection to the Following Line - Hold `Shift` and `Arrow ↓ Down` or `Arrow ↑ Up`.

### Words

- Select Current Word - `Ctrl` + `D`

- Go to Start/End of Current Word - `Ctrl` + `Arrow  Left` or `Arrow Right ▶️ ` (Also Used to Navigate Faster Between Words instead of Characters)

- Select Words Going Forwards/Backwards - `Ctrl` + `Shift` + `Arrow  Left` or `Arrow Right ▶️ `

### Blocks

- Turn to Block Comment - `Shift` + `Alt` + `A`

<br>
<br>
<br>
<br>

## Formatting

- Code Formatting - `Ctrl` + `K` then `Ctrl` + `F`

- Fold/Unfold Code - Select a Piece of Code then `Ctrl` + `Shift` + `[` or `]`

- Fold based on Indentation Level - `Ctrl` + `K` then `Ctrl` + `1` to `5` (based on Indentation Level you want to Fold - pressing 2 will fold 3-5)

- Unident a Piece of Code One Level (Reverse Tab)- `Shift` + `Tab`

### Code Navigation

- Go to Definition of a Function - `Ctrl` + `Left Click`

- Search for a Function/Variable Declaration (AKA Go to Symbol) - `Ctrl` + `Shift` + `O` (Letter O not 0)

- Show Categorized Functions/Variable Declarations (AKA Go to Symbol) of File - `Ctrl` + `Shift` + `O` then `:`

- Go to Specific Line - `Ctrl` + `G` then type the Line Number eg. 11

- Search for Symbol in Workspace (Greek) - `Ctrl` + `P` then `Shift` + `3`
- Search for Symbol in Workspace (English) -

### Files

- Search Within a File - `Ctrl` + `F`

- To Open the Replace under Find - `Ctrl` + `H`

- To Replace All Instances of Find - `Ctrl` + `Alt` + `Enter`

### Multicursor

- Select all Instances of a Selection and Edit them Simultaneously - `Ctrl` + `Alt` + `L`
- Having a Multicursor and pressing `Ctrl` + `Shift` + `L` will Select (given the cursor position) the last common word between those strings. Eg. havigng background-color on 3 lines and hovering a multicursor anywhere withing 'color' will highlight the word 'color' in all 3 lines.

- Select Something then Pressing `Ctrl` + `D` will Select the Next Instance of Selected Thing and add a Multicursor, pressing `Ctrl` + `D` again will also select the following etc. etc.

- Create Secondary Cursor on Line Below - Placing a Curson then Holding `Alt` (or `Command`) and `Ctrl` and `Arrow ↓ Down` or `Arrow ↑ Up`.

- Spawn Multiple Cursors - `Ctrl` + `Shift` + `Alt` + `Up Arrow` or `Down Arrow`

- Spawn Multiple Cursors (With Mouse) - Hold `Mouse Wheel` then `Drag Above Lines`

### Uncategorized

- Fold Selected Code Block - `Ctrl` + `K` then `Ctrl` + `,` (Key next to M)

- Unfold Current Cursored Code Block - `Ctrl` + `Shift` + `]`

- Expand Selection by Blocks - `Shift` + `Alt` + `Right Arrow` (Rever Back to previous Block - `Left Arrow`)

<br>
<br>
<br>
<br>

## Resources

- [VS Code Tips & Tricks](https://github.com/microsoft/vscode-tips-and-tricks)
- [Shortcuts Povio Blog](https://povio.com/blog/shortcut-your-way-to-faster-coding-in-visual-studio-code/#:~:text=Select%20current%20line%3A%20Ctrl%20%2B%20L)
- [The best VS Code trick that you're probably not using.](https://www.youtube.com/watch?v=mOeWy5Q1P4E)

<br>
<br>

# My Settings

### Resources

- [Coding Fonts](https://coding-fonts.netlify.app/)
- [Nerd Fonts](https://www.nerdfonts.com/)

## Editor

- Editor - Render Whitespace: `trailing` - Shows Space or Tab characters as little dots at the end of lines. Makes it easier to spot trailing whitespaces.
  
- Editor - Experimental WHitespace Rendering: `svg` - Can't be set in JSON format.

- Editor - Font Size : `Place Here`

- Editor - Line Height : `Place Here`

Calculated at `Font Size` times (x) `Line Height` so 14 x 1.3 = 18.2 (will give a 1.3 Line Height on a 14 pixels Font Size)

- Editor - Font Ligatures : `False`

- Editor - Font Family : `Lotion,Menlo,'Courier New',monospace`

Using Multiple Font Families with comma, sets them up as Redudancies in case the PC doesn't have the specific font installed.

Font Families with Spaces ex. Courier New, Cascadia Code etc. will need to be put inside quotes

- Editor - Line Numbers: `off`

Controls the Display of Line Numbers inside Editor.

- Editor - Cursor Style: `line`

Controls the Cursor Style.

- Editor - Find - [Cursor Move On Type](https://www.youtube.com/watch?v=gnyWgbogJwk): ❌

- Editor - [Accessibility Support](https://www.youtube.com/watch?v=Z779xMbSszg): `off`

### JSON Only

- `"editor.fontWeight": "normal"`

```
"editor.tokenColorCustomizations": {
    "comments": "#ffe600",
    "keywords": "#FF0000",
    "variables": "#FF0000",
    "numbers": "#FF0000",
    "functions": "#FF0000",
    "strings": "#FF0000",
    "types": "#FF0000",
    "textMateRules": [
      {
        "scope": "keyword.operator",
        "settings": {
          "foreground": "#FF0000"
        }
      }
    ]
  },
```

Resource: https://www.youtube.com/watch?v=7DlZHZF7P3U

### Scrollbar

- Editor - Scrollbar - Horizontal: `hidden`

Hides the Horizontal (Down) Scrollbar from the Editor

- Editor - Scrollbar - Vertical: `hidden`

Hides the Verical (Side) Scrollbar from the Editor

### Formatter

- Editor - Default Formatter: `Prettier - Code formatter`

- Editor - Format On Paste: ✅

- Editor - Format On Save: ✅

- Editor - Format On Save Mode: `file`

### Zoom

- Editor - Mouse Wheel Zoom : ✅ (Hold `Ctrl` and `Zoom/Unzoom` Editor with your `Mouse Wheel` )

### Rules

- Editor - Rules : `"editor.rulers": [ 120 ]`

  Renders a Verical Rule after Certain Number of Monospace Characters. As to say, break up the line after 120 characters or it's not going to be readable.

- Workbench - Color Customizations : `"workbench.colorCustomizations": { "editorRuler.foreground": "#ff4081" }`

Changes the Color of the Rendered Ruler.

### Indentation

- Editor - Guides : Intentation ✅

Controls whether Editor Should Render Intent Guides

### Word Wrap

- Editor - Word Wrap : `off`

Controls if lines should wrap and how.

- Editor - Word Wrap Column : `120`

Wraps Lines of Code Based on Visibillity

### Cursor

- Editor - Curson Blinking : `Phase`

Controls the Blinking Animation of the Cursor.

- Editor - [Cursor Smooth Caret Animation](https://www.youtube.com/watch?v=FCUi_dRU0tY) : `on`

Allows for a small animation as cursor moves from place to place.

- Editor - Smooth Scrolling : ✅

### Minimap

- Editor - Minimap: Enabled ❌

## Files

- Files - Default Language : `${activeEditorLanguage}`

When creating a New File by Default the Editor will assign it the same language as the file you were editing. Say you editing a Python Script then CTRL+N will create a New Python File, same with a HTML file etc.

- Files - Default Encoding : `UTF-8`

When creating a File, it will be by Default a UTF-8 encoding file.

**_ Note to Self, Find a Way to do the same with Encoding as Language or Find a Way when Creating or Editing UTF-16 files to be able to create them using UTF-16 Default Encoding _**

- Files - Auto Save: `after Delay` or another option `on Focus Change` switching between files will trigger it.

- Files - Auto Save Delay: `100`

- Files - Refactoring - Auto Save: ✅

- Files - Hot Exit : `on ExitandWIndowClose`

## Outline

- Outline: - Collapse Items: `alwaysExpand `
- Outline: - Icons ✅
- Outline: - Problems: Badges ✅
- Outline: - Problems: Colors ✅
- Outline: - Show Functions ✅
- Outline: - Show Methods ✅
- Outline: - Show Modules ✅

Everything else is OFF.

## Terminal

- Terminal - Integrated - Enable Multi Line Paste Warning : ❌

When this is set to true, trying to paste text with multiple lines will display a dialog asking you whether to continue or not with the paste. When it's set to false, the dialog is not shown and instead the text is pasted right away.

The paste is hnadle by the shell's readline (in case of pwsh).

## Git

- Git - Open Repository in Parent Folders : `prompt`

- Git - [Autofetch](https://www.youtube.com/watch?v=Ng5xRtLVGpo) : `true`

When set to true, commits will automaticall be fetched from repository's DEFAULT REMOTE of the current Git Repository.

## WorkBench

- Workbench - Color Theme: `Test Input`

- Workbench - Icon Theme: `VSCode Great Icons`

- Workbench - Product Icon Theme: `Tabler Icons`

- Workbench - Status Bar - Visible: ✅

Disabling the Status Bar (Down Bar) will stop Certain Extensions like [Syncing](https://open-vsx.org/extension/nonoroazoro/syncing) from Working.

- Workbench - [Layout Control](https://stackoverflow.com/questions/71725819/how-to-remove-layout-button-in-the-vscode-titlebar): ✅

Control whether the layout control is shown in the custom title bar.

- Workbench - Color Customizations: `Edit in Settings.json`

```
  "workbench.colorCustomizations": {
    "editor.lineHighlightBackground": "#0c430ace",
    "editor.lineHighlightBorder": "#8cd637c3",
    // "editor.selectionHighlightBorder": "#ff0000",
    // "editor.selectionHighlightBackground": "#ff0000",
    // "editor.selectionForeground": "#ff0000",
    // "editor.selectionBackground": "#ff0000",
    "editorRuler.foreground": "#79072d"
  }
```

- Workbench - Activity Bar - Visible: ❌ (Only in JSON)

``"workbench.activityBar.visible": false,`

### Preview

- Workbench - Editor: Enable Preview ❌

By default VS Code will Open a File in "Preview Mode" this means that when you click away, without editing the File or Double Clicking it, it will switch the Open Tab to the New File, since you were just "Previewing the File". I like to disable that and open the file instead.

- Workbench - Startup Editor: `None`

Controls what to show upon Opening VS Code. I prefer None so Nothing.

### List

- Workbench - Smooth Scrolling : ✅

Enables Smooth Scrolling along Lists and Trees.

### Window

- Window - Zoom Level: `0`

Adjusts the Zoom Level on the Whole Window - Original size is 0.

- Window - Menu Bar Visibillity: `Hidden`

Compact the Menubar over the File Explorer

- Window - [Command Center](https://www.facebook.com/CSSWeekly/videos/a-quick-overview-of-the-new-command-center-option-available-in-vs-code-v169enabl/730181864769756/): ❌

- Window - Title : `${remoteName}${seperator}${activeEditorShort}`

Sets the Window Title based on Pattern.

### Breadcrumbs

- Workbench - Breadcrumbs : ❌

Disables Breadcrumbs Fully.

### Editor

- Workbench - Editor - Show Tabs: `single`

That allow only for 1 Tab in the Editor at one time.

- Workbench - Editor - Limit - Per Editor Group: ✅

Controls whether the limit will be Per Editor Group.
Means you can Multitask by having grips and seperate editors, but each Grid will allow 1 Editor.

- Workbench - Editor - Limit - Value: `1`

Controls the Maximum Number of Open Editors.

## Explorer

- Explorer - Open Editors - Min Visible: `0`

- [Explorer - Open Editors - Visible](https://github.com/microsoft/vscode/issues/187087): `1`

The zero setting was removed recently in favour of using the standard mechanism for hiding a view via its context menu.

- Explorer - Confirm Drag and Drop: ❌

Controls whether the Explorer asks for Confirmation when Draging and Dropping Files and Folders.

- Explorer - Confirm Delete : ❌

Controls whether the Explorer should ask for confirmation when deleting a file via the trash.

## Extensions

- Extensions - Ignore Recommendations: ✅

## Snippets

Python Snippets

Javascript Snippets

HTML & Emmet Snippets

CSS Snippets

## Extensions

Installed

- Python by ms-python

## Keyboard Shortcuts

---- Place File Here ------

## Keyboard Shorctus

### Tips

Find When Clauses Keyboard Shortcuts

` - Open Command Pallet ---> Toggle Developer Tools`

This will open a Developer Options Window

- Open Command Palllet ---> Inspect Context Keys

Will output to console the Context Outputs so you can use on your when clauses for Keybuidings.

## General Tips - Knowledge Base

Settings in VSCode can be Language Specific,

```
"[markdown]":{
    "editor.quickSuggestions": false
  },
```

Will Disable suggestions only for Markdown Files

## Window Instances

I have 2 Instances Always Open - One on main Screen where I do side by side coding and one on a Vertical Monitor where I do my Functions.
I prefer to set my functions in a different file, seperating logic from functions or church and state however you wanna call it.

## Uncategorized

- Holding CTRL + Clicking on a Function will Open that Function for you, even if in another file.

- Pressing CTRL + Space spawns Intellisense.

- Pressing Right Click on an Function Reference or Function and Pressing `Rename Symbol` (F2) will change UNIVERSALLY anywhere you used it, the name of the function as well as the references to it.

## Diff Editor

- Diff Editor: Word Wrap : `off`

## Chat

- Chat - Editor - Wrd Wrap: `off`

Controls whether lines should wrap in chat codeblocks.

## Personallization

[Theme]()
[Icon Set]()

## Integrated Terminal

### [Oh My Posh](https://ohmyposh.dev/)

#### Installation

`winget install JanDeDobbeleer.OhMyPosh -s winget`

#### Requirements

- [Win-Get Cli](https://learn.microsoft.com/en-us/windows/package-manager/winget/#install-winget)
- [Posh-git](https://github.com/dahlbyk/posh-git)
- [Terminal Icons](https://github.com/devblackops/Terminal-Icons)
- [Python 3.11](https://apps.microsoft.com/detail/python-311/9NRWMJP3717K?hl=en-us&gl=US) - or Desired Version
- [Windows Terminal](https://apps.microsoft.com/detail/windows-terminal/9N0DX20HK701?hl=en-US&gl=US)
- [Windows Terminal Preview](https://apps.microsoft.com/detail/windows-terminal-preview/9N8G5RFZ9XK3?hl=en-US&gl=US)

#### Theme

- [Ballerini](https://github.com/Ballerini-Theme/oh-my-posh/tree/main)

#### Update

`winget upgrade JanDeDobbeleer.OhMyPosh -s winget`

#### Configuration

##### Create Profile

```
codium $PROFILE
```

In case of Error, Run:

```
New-Item -Path $PROFILE -Type File -Force
```

Create the profile for Powershell.

##### Edit Confirguatrion

Copy the Following Contents into Microsoft.PowerShell_profile.ps1

```
oh-my-posh init pwsh --config 'C:/Users/Reverse/Documents/WindowsPowerShell/ballerini.omp.json' | Invoke-Expression

Import-Module posh-git
Import-Module Terminal-Icons
```

##### Troubleshooting Oh My Posh

Due to frequent updates of Oh My Posh, Antivirus software occasionally flags it (false positive). To ensure Oh My Posh isn't blocked you can either report it to your favorite Antivirus software as false positive (e.g. Report a false positive/negative to Microsoft for analysis) or create an exclusion for it. Exclusions should be added with the full path to the executable, you can get it with the following command from a PowerShell prompt:

`(Get-Command oh-my-posh).Source`

##### Troubleshooting Powershell

if you get `PowerShell says "execution of scripts is disabled on this system."` run `Set-ExecutionPolicy RemoteSigned`

## Resources

- [Oh My Posh Guide](https://www.youtube.com/watch?v=-G6GbXGo4wo)
- [Povio Shortcuts](https://povio.com/blog/shortcut-your-way-to-faster-coding-in-visual-studio-code/#:~:text=Select%20current%20line%3A%20Ctrl%20%2B%20L)

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>OEM_8</kbd> + <kbd>Down Arrow </kbd>

```
"when": "editorFocus || editorTextFocus"
```

# VS-Code-Extensions

A List of VS Code Extensions

- [VS-Code-Extensions](#vs-code-extensions)
  - [Web Development](#web-development)
      - [Autocomplete](#autocomplete)
      - [HTML \& CSS Specific](#html--css-specific)
      - [Web Browser Support](#web-browser-support)
      - [Typescript](#typescript)
      - [Javascript \& Typescript Specific](#javascript--typescript-specific)
  - [Markdown](#markdown)
  - [Networking](#networking)
  - [Productivity](#productivity)
  - [Editor Assist](#editor-assist)
  - [Backup](#backup)
  - [File Types](#file-types)
  - [Formatting](#formatting)
  - [Autocompletion](#autocompletion)
  - [Spell Check](#spell-check)
  - [Performance](#performance)
  - [Logging](#logging)
  - [Personalization](#personalization)
  - [Documentation](#documentation)
  - [Collaboration](#collaboration)
  - [Debugging](#debugging)
  - [Social Media](#social-media)
  - [APIs](#apis)
  - [Prototyping](#prototyping)
  - [Data](#data)
  - [Uncategorized](#uncategorized)
- [Resources](#resources)

## Web Development

- [Colorize](https://marketplace.visualstudio.com/items?itemName=kamikillerto.vscode-colorize)

- [Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer)

- [Icon Fonts](https://marketplace.visualstudio.com/items?itemName=idleberg.icon-fonts)

- [Open in browser](https://marketplace.visualstudio.com/items?itemName=techer.open-in-browser)

- [Console Ninja](https://marketplace.visualstudio.com/items?itemName=WallabyJs.console-ninja)

- [Image preview](https://marketplace.visualstudio.com/items?itemName=kisstkondoros.vscode-gutter-preview)

#### Autocomplete

- [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)

- [Auto Close Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag)

- [Highlight Matching Tag](https://marketplace.visualstudio.com/items?itemName=vincaslt.highlight-matching-tag)

- [Snippet Creator](https://marketplace.visualstudio.com/items?itemName=wware.snippet-creator)

#### HTML & CSS Specific

- [IntelliSense for CSS class names in HTML](https://marketplace.visualstudio.com/items?itemName=Zignd.html-css-class-completion) or [HTML CSS Support](https://marketplace.visualstudio.com/items?itemName=ecmel.vscode-html-css)

- [CSS Modules](https://marketplace.visualstudio.com/items?itemName=clinyong.vscode-css-modules)

- [CSS Peek](https://marketplace.visualstudio.com/items?itemName=pranaygp.vscode-css-peek)

- [px to rem](https://marketplace.visualstudio.com/items?itemName=sainoba.px-to-rem)

- [CSS Flexbox Cheatsheet](https://marketplace.visualstudio.com/items?itemName=dzhavat.css-flexbox-cheatsheet)

- [CSS Grid Snippets](https://marketplace.visualstudio.com/items?itemName=ohansemmanuel.css-grid-snippets)

#### Web Browser Support

- [Debugger for Firefox](https://marketplace.visualstudio.com/items?itemName=firefox-devtools.vscode-firefox-debug)

- [[Deprecated] Debugger for Chrome](https://marketplace.visualstudio.com/items?itemName=msjsdiag.debugger-for-chrome) or [Debugger for Chrome (Nightly)](https://marketplace.visualstudio.com/items?itemName=msjsdiag.debugger-for-chrome-nightly)

#### Typescript

- [Auto Import](https://marketplace.visualstudio.com/items?itemName=steoates.autoimport)

- [TypeScript Hero](https://marketplace.visualstudio.com/items?itemName=rbbit.typescript-hero)

#### Javascript & Typescript Specific

- [Twoslash Query Comments](https://marketplace.visualstudio.com/items?itemName=Orta.vscode-twoslash-queries)

  - [My favourite VSCode extension has 3k downloads](https://www.youtube.com/watch?v=u0adKDu--cA)

- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)

- [JavaScript (ES6) code snippets](https://marketplace.visualstudio.com/items?itemName=xabikos.JavaScriptSnippets)

- [Arrow Function Snippets](https://marketplace.visualstudio.com/items?itemName=deinsoftware.arrow-function-snippets)

- [Special-console.log](https://marketplace.visualstudio.com/items?itemName=leechaojiang.special-console-log)

- [Create tests](https://marketplace.visualstudio.com/items?itemName=hardikmodha.create-tests)

## Markdown

- [Auto-Open Markdown](https://marketplace.visualstudio.com/items?itemName=hnw.vscode-auto-open-markdown-preview)

- [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)

- [Markdown Preview Enhanced](https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced)

## Networking

- [Remote - SSH](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)

- [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

## Productivity

- [Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)

- [Project Manager](https://marketplace.visualstudio.com/items?itemName=alefragnani.project-manager)

- [Todo Tree](https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.todo-tree)

- [Toggle Quotes](https://marketplace.visualstudio.com/items?itemName=BriteSnow.vscode-toggle-quotes)

## Editor Assist

- [Hungry Delete](https://marketplace.visualstudio.com/items?itemName=jasonlhy.hungry-delete)

- [Tab Out](https://marketplace.visualstudio.com/items?itemName=albert.TabOut)

- [Color Manager](https://marketplace.visualstudio.com/items?itemName=RoyAction.color-manager)

## Backup

- [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync)

- [Local History](https://marketplace.visualstudio.com/items?itemName=xyz.local-history)

## File Types

- [SVG Viewer](https://marketplace.visualstudio.com/items?itemName=Dheovani.svg-viewer)

## Formatting

- [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)

- [Prettier ESLint](https://marketplace.visualstudio.com/items?itemName=rvest.vs-code-prettier-eslint)

## Autocompletion

- [Github Copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot)

- [Intellicode](https://marketplace.visualstudio.com/items?itemName=VisualStudioExptTeam.vscodeintellicode)

## Spell Check

- [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)

## Performance

- [Import Cost](https://marketplace.visualstudio.com/items?itemName=wix.vscode-import-cost)

- [Version Lens](https://marketplace.visualstudio.com/items?itemName=pflannery.vscode-versionlens)

## Logging

- [Output Colorizer](https://marketplace.visualstudio.com/items?itemName=IBM.output-colorizer)

## Personalization

- [Color Highlight](https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight)

- [Indent Rainbow](https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow)

- [Bracket Pair Colorization Toggler](https://marketplace.visualstudio.com/items?itemName=dzhavat.bracket-pair-toggler)

- [Bracket Pair Colorizers - a List](https://marketplace.visualstudio.com/search?term=Bracket%20Pair%20Colorizer&target=VSCode&category=All%20categories&sortBy=Relevance)

- [Peacock](https://marketplace.visualstudio.com/items?itemName=johnpapa.vscode-peacock)

- [TODO Highlights](https://marketplace.visualstudio.com/items?itemName=wayou.vscode-todo-highlight)

- [Code Time](https://marketplace.visualstudio.com/items?itemName=softwaredotcom.swdc-vscode)

- [Explorer Exclude](https://marketplace.visualstudio.com/items?itemName=PeterSchmalfeldt.explorer-exclude)

- [VIbrancy Continued](https://marketplace.visualstudio.com/items?itemName=illixion.vscode-vibrancy-continued)

- [Winddown](https://marketplace.visualstudio.com/items?itemName=winddown.vscode-winddown)

- [Formatting Toggle](https://marketplace.visualstudio.com/items?itemName=tombonnike.vscode-status-bar-format-toggle)

- [Auto Hide](https://marketplace.visualstudio.com/items?itemName=sirmspencer.vscode-autohide)

## Documentation

- [CodeTour](https://marketplace.visualstudio.com/items?itemName=vsls-contrib.codetour)

- [Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments)

- [JSDoc Generator](https://marketplace.visualstudio.com/items?itemName=kimlimjustin.jsdoc-generator) or [jsdoc](https://marketplace.visualstudio.com/items?itemName=lllllllqw.jsdoc) or [JSDoc Generator](https://marketplace.visualstudio.com/items?itemName=crystal-spider.jsdoc-generator)

## Collaboration

- [Git Lens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)

- [GitBlame](https://marketplace.visualstudio.com/items?itemName=waderyan.gitblame) - Configurable in-line comment about Git History

- [Git Graph](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph) - View a Git Graph of your Repository

- [Live Share](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare) - Share your Terminal with Other People

- [TODO.md Kanban Board](https://marketplace.visualstudio.com/items?itemName=coddx.coddx-alpha) or [Kanban](https://marketplace.visualstudio.com/items?itemName=mkloubert.vscode-kanban)

- [Github Pull Requests and Issues](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-pull-request-github)

## Debugging

- [Turbo Console Log](https://marketplace.visualstudio.com/items?itemName=ChakrounAnas.turbo-console-log) -

- [Git History](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory) - See Commit History of a Specific File over a Git Repository's History.

- [Error Lens](https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens) - Show Error Messages in Line in Real Time

## Social Media

- [Code Snap](https://marketplace.visualstudio.com/items?itemName=adpyke.codesnap) - Take Beautiful Screenshots of pieces of code

- [Polacode](https://marketplace.visualstudio.com/items?itemName=pnp.polacode) - Take Beautiful Screensons of Pieces of Code

## APIs

- [Rest Client](https://marketplace.visualstudio.com/items?itemName=humao.rest-client)

- [Prettify JSON](https://marketplace.visualstudio.com/items?itemName=mohsen1.prettify-json)

- [Paste JSON as Code](https://marketplace.visualstudio.com/items?itemName=quicktype.quicktype)

- [Thunder Client](https://marketplace.visualstudio.com/items?itemName=rangav.vscode-thunder-client)

## Prototyping

- [Draw.io](https://marketplace.visualstudio.com/items?itemName=hediet.vscode-drawio)

## Data

- [Random Everything](https://marketplace.visualstudio.com/items?itemName=helixquar.randomeverything)

## Uncategorized

- [RAINING IN V S C O D E](https://marketplace.visualstudio.com/items?itemName=TorShepherd.raining-in)

- [Better Folding](https://marketplace.visualstudio.com/items?itemName=MohammadBaqer.better-folding)

- [StackFinder](https://marketplace.visualstudio.com/items?itemName=mark-fobert.stackfinder)

- [Blockman - Highlight Nested Code Blocks](https://marketplace.visualstudio.com/items?itemName=leodevbro.blockman)

- [Real-Time Debugging](https://marketplace.visualstudio.com/items?itemName=hediet.realtime-debugging)

- [Tabs color](https://marketplace.visualstudio.com/items?itemName=mondersky.tabscolor)

- [Readable - AI Generated Comments](https://marketplace.visualstudio.com/items?itemName=pcsoftware.readable)

- [Pieces for VS Code](https://marketplace.visualstudio.com/items?itemName=MeshIntelligentTechnologiesInc.pieces-vscode) & [Pieces Install](https://docs.pieces.app/installation-getting-started/windows)

- [Numbered Bookmarks](https://marketplace.visualstudio.com/items?itemName=alefragnani.numbered-bookmarks) or [Bookmarks](https://marketplace.visualstudio.com/items?itemName=alefragnani.Bookmarks)

- [ColorTabs](https://marketplace.visualstudio.com/items?itemName=orepor.color-tabs-vscode-ext)

- [vscode-spotify](https://marketplace.visualstudio.com/items?itemName=shyykoserhiy.vscode-spotify)

- [advanced-new-file](https://marketplace.visualstudio.com/items?itemName=patbenatar.advanced-new-file) + [11:30](https://www.youtube.com/watch?v=yvXHM2NByh4)

- [Autoprefixer](https://marketplace.visualstudio.com/items?itemName=mrmlnc.vscode-autoprefixer)

- [AutoComplate shell](https://marketplace.visualstudio.com/items?itemName=truman.autocomplate-shell)

- [TS/JS postfix completion](https://marketplace.visualstudio.com/items?itemName=ipatalas.vscode-postfix-ts)

- [Schema.org code snippets](https://marketplace.visualstudio.com/items?itemName=austinleegordon.vscode-schema-dot-org)

- [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)

- [GistPad](https://marketplace.visualstudio.com/items?itemName=vsls-contrib.gistfs)

- [GitHub Repositories](https://marketplace.visualstudio.com/items?itemName=GitHub.remotehub)

- [Duplicate action](https://marketplace.visualstudio.com/items?itemName=mrmlnc.vscode-duplicate)

- [Toggle](https://marketplace.visualstudio.com/items?itemName=rebornix.toggle)

- [gi](https://marketplace.visualstudio.com/items?itemName=rubbersheep.gi)

- [GitLink](https://marketplace.visualstudio.com/items?itemName=qezhu.gitlink)

- [Multiple clipboards for VSCode](https://marketplace.visualstudio.com/items?itemName=slevesque.vscode-multiclip)

- [AutoHotkey Plus](https://marketplace.visualstudio.com/items?itemName=cweijan.vscode-autohotkey-plus)

- [Parameter Hints](https://marketplace.visualstudio.com/items?itemName=DominicVonk.parameter-hints)

- [Path Autocomplete](https://marketplace.visualstudio.com/items?itemName=ionutvmi.path-autocomplete)

- [Project Dashboard](https://marketplace.visualstudio.com/items?itemName=kruemelkatze.vscode-dashboard)

- [Rainbow CSV](https://marketplace.visualstudio.com/items?itemName=mechatroner.rainbow-csv)

- [Text Power Tools](https://marketplace.visualstudio.com/items?itemName=qcz.text-power-tools)

- [Time Converter](https://marketplace.visualstudio.com/items?itemName=HaaLeo.timing)

- [Paste and Indent](https://marketplace.visualstudio.com/items?itemName=Rubymaniac.vscode-paste-and-indent)

- [Sort lines](https://marketplace.visualstudio.com/items?itemName=Tyriar.sort-lines)

- [Wrap Selection](https://marketplace.visualstudio.com/items?itemName=konstantin.wrapSelection)

- [FOrmatting Toggle](https://marketplace.visualstudio.com/items?itemName=tombonnike.vscode-status-bar-format-toggle)

- [Edit with Shell Command](https://marketplace.visualstudio.com/items?itemName=ryu1kn.edit-with-shell)

- [EditorConfig for VS Code](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)

- [Customize UI](https://marketplace.visualstudio.com/items?itemName=iocave.customize-ui)

- [Vibrancy](https://marketplace.visualstudio.com/items?itemName=eyhn.vscode-vibrancy)

- [Titlebar-Less VSCode for macOS](https://marketplace.visualstudio.com/items?itemName=lehni.vscode-titlebar-less-macos)

- [CodeUI](https://marketplace.visualstudio.com/items?itemName=ryanraposo.codeui)

- [GlassIt-VSC](https://marketplace.visualstudio.com/items?itemName=s-nlf-fh.glassit)

- [Markdown Editor](https://marketplace.visualstudio.com/items?itemName=zaaack.markdown-editor) or [Markdown Editor](https://open-vsx.org/extension/zaaack/markdown-editor)

- [Markdown Footnotes](https://marketplace.visualstudio.com/items?itemName=bierner.markdown-footnotes)

- [Markdown Links](https://marketplace.visualstudio.com/items?itemName=tchayen.markdown-links)

- [Markdown Notes](https://marketplace.visualstudio.com/items?itemName=kortina.vscode-markdown-notes)

- [Markdown Notebook](https://marketplace.visualstudio.com/items?itemName=ms-vscode.vscode-markdown-notebook)

- [UNOTES - Markdown Notes WYSIWYG](https://marketplace.visualstudio.com/items?itemName=ryanmcalister.Unotes)

- [Blockman - Highlight Nested Code Blocks](https://marketplace.visualstudio.com/items?itemName=leodevbro.blockman)

- [Move selection to new file](https://marketplace.visualstudio.com/items?itemName=kentos.move-selection-to-new-file)

- [File Bunny](https://open-vsx.org/extension/robole/file-bunny)

# Resources

- [Awesome VSCode](https://github.com/viatsko/awesome-vscode)
