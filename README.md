# Digi's Dotfiles!

These are for both Windows/Linux, some programs will be used on both some will be used on one OS (I will specify)

## Introduction

## Programs Used

- Terminal: Wezterm (Windows and Linux)
- Shell: Powershell (Windows), Fish (Linux)
- Tiling Window Manager: GlazeWM (Windows), Hyprland (Linux)
- Bar: Zebar (Windows)
- Package manager: Winget/Scoop (Windows), Pacman/Yay (Linux)
- Dotfiles manager: Chezmoi
- Other Programs: Lazygit, Spicetify, Zen Browser

## 📑 Basic usage

### Useful keybindings

#### GlazeWM
| Keys | Action |
|:-|:-|
|<kbd>alt</kbd> + <kbd>enter</kbd>| Open terminal|
|<kbd>alt</kbd> + <kbd>a/f</kbd>| Move workspace left \| right|
|<kbd>alt</kbd> + <kbd>h\|j\|k\|l</kbd>| Focus window left \| bottom \| top \| right|
|<kbd>alt</kbd> + <kbd>shift</kbd> + <kbd>h\|j\|k\|l</kbd>| Move focusing window left \| bottom \| top \| right|
|<kbd>alt</kbd> + <kbd>shift</kbd> + <kbd>q</kbd>| Close focusing window|
|<kbd>alt</kbd> + <kbd>1\|2\|3\|4\|5\|6\|7\|8\|9\|0</kbd>| Focus workspace {n}|
|<kbd>alt</kbd> + <kbd>shift</kbd> + <kbd>1\|2\|3\|4\|5\|6\|7\|8\|9\|0</kbd>| Move focusing window to workspace {n}|
|<kbd>alt</kbd> + <kbd>shift</kbd> + <kbd>r</kbd>| Reload glazewm config |
|<kbd>alt</kbd> + <kbd>shift</kbd> + <kbd>e</kbd>| Exit glazewm |

## Installation 

### Pre-install notices

### Install Fonts

#### Windows
- [Pixelcraft Nerd Font](https://github.com/jade-tam/Pixelcraft/releases) (please download and use Nerd Font version)
- [Pixel Code](https://qwerasd205.github.io/PixelCode/)
- [Monofur Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Monofur.zip)
- [Space Mono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/SpaceMono.zip)

#### Both Windows and Linux
- [JetBrains Mono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip)

### Install chezmoi and apply dotfiles

- Install chezmoi from Winget with: ```winget install chezmoi``` (Windows)
- Install chezmoi with Pacman with: ```sudo pacman -S chezmoi``` (Arch Linux)
- Close and reopen terminal for chezmoi command to be recognized.
- Initialize chezmoi and apply the dotfiles with: ```chezmoi init https://github.com/a-Digi-a/dotfiles.git```
- NOTE: THIS IS STILL A WIP AND MOST LIKELY ONLY WORKS ON WINDOWS AUTOMATICALLY FOR NOW, YOU CAN STILL MANUALLY INSTALL THE DOTFILES ON LINUX

### Auto start GlazeWM & Zebar at windows start

- Just need to copy the GlazeWM shortcut.
- Open Start Up folder by pressing **Windows + R** and type in ```shell:startup```
- Paste the shortcut in here and we are done, you can also run GlazeWM now.
- Zebar will open and close with GlazeWM.

### Optional Tweaks

- Enable automatically hide the taskbar (for more vertical space).

### Other information

- Special thanks to jade-tam as I used their dotfiles as a template: <https://github.com/jade-tam/dotfiles>
