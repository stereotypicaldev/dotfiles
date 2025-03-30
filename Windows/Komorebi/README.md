<h1 align="center">Komorebi</h1>

<div align="justify">A virtual storage space for my configuration files for Komorebi Tilting Window Manager for Windows OS.</div>

<h2 align="center">Window Managers</h2>

<div align="justify">A window manager is an application that manages open Windows. For Windows, I happen to use <a link="https://github.com/LGUG2Z/komorebi">Komorebi</a>; A free open-source project that mimics the functionallity of <a link="https://github.com/koekeishiya/yabai">Yabai</a>; My favorite MacOS Window Manager. (check my Yabai configuration <a link="dd">here</a>)</div> 

<br>

<div align="justify">You can read more about Komorebi here; as well as support it's creator by opting for a <a link="">donation</a>, but for now, if you ready, let's more on with setting it up...</div>

<h2 align="center">Prerequisities</h2>

<div align="center">In order to install <a link="https://github.com/LGUG2Z/komorebi">Komorebi</a>, you will need to install <a link="https://scoop.sh/">Scoop</a>, a Windows package manager.</div>

<br>

<div align="justify">Inside a <b>Non-Administrator</b> Powershell Window paste the following commands...</div>

<br>

```
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

<br>

```
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

<br>

```
scoop install git
```

<br>

```
scoop bucket add extras
```

<br>

<div align="justify">Close the Powershell Window and open different one, using the <b>Open as Administrator</b> option and execute the following command.</div>

<br>

```
Set-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'LongPathsEnabled' -Value 1
```

<h2 align="center">Disabling System Animation</h2>


<div align="justify">Enable the option <b>Turn off all unnecessary animations (when possible)</b> by following the options in the list below.</div>

<br>

- Control Panel
- Ease of Access
- Ease of Access Center

<div align="justify">Uncheck the option <b>Make the Computer easier to see.</b> 

<h2 align="center">Quickstart</h2>

<div align="justify">There are two mainstream options to use Komorebi, whkd and AutoHotKey. My preference lays with <a link="">AutoHotKey;</a> That's because it's more customizable and straightforward to use.</div>

<br>

<div align="justify">In a <b>Non-Administrator</b> Powershell Window execute the following command.</div>

<br>

```
scoop install komorebi autohotkey
```

<h2 align="center">Configuration</h2>

<div align="justify">Creating a configuration directory</div>

<br>

```
mkdir -p ~/.config/komorebi
```

<br>

<div align="justify">Open up your PowerShell profile configuration in Notepad++ (Requires Notepad++ to be installed)</div> 

<br>

```
Start notepad++ $PROFILE
```

<br>

<div align="justify">Additionally, you can edit the file with Visual Studio Code</div>

```
code $PROFILE
```

<br>

<div align="justify">Append the following line at the end of the file, in case the file is empty, no problem, it's just a newly created profile.</div>

<br>

```
$Env:KOMOREBI_CONFIG_HOME = 'C:\Users\{your username}\.config\komorebi'
```

<br>

<div align="justify">Reload the changes on the PowerShell profile</div>

<br>

```
. $PROFILE
```

<br>

<div align="justify">Now you can copy my configuration by [downloading it here.]() and placing the files into the config folder, we just created.</div>

<br>

<div align="justify">Let's test the configuration now, by executing the following commands</div>

<br>

```
komorebic quickstart
```

<br>

```
komorebic start --ahk
```
<br>
<br>

<h4 align="center">Congratulations, you ready to start using Komorebi!</h4>

<br>

<h2 align="center">Optional Settings</h2>

<div align="center">Auto-start on Window Startup </div>

<br>

```
komorebic enable-autostart --config C:\Users\{Username}\.config\komorebi\komorebi.json --ahk
```