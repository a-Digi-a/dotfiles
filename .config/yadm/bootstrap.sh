!#/bin/bash

cat << EOF
----
 ____  _       _ _       ____        _    __ _ _
|  _ \(_) __ _(_| )___  |  _ \  ___ | |_ / _(_) | ___
| | | | |/ _` | |// __| | | | |/ _ \| __| |_| | |/ _ \
| |_| | | (_| | | \__ \ | |_| | (_) | |_|  _| | |  __/
|____/|_|\__, |_| |___/ |____/ \___/ \__|_| |_|_|\___|
         |___/
 ___           _        _ _           _
|_ _|_ __  ___| |_ __ _| | | ___ _ __| |
 | || '_ \/ __| __/ _` | | |/ _ \ '__| |
 | || | | \__ \ || (_| | | |  __/ |  |_|
|___|_| |_|___/\__\__,_|_|_|\___|_|  (_)

----
EOF

# Install Paru
if command -v paru >/dev/null 2>&1
then
    echo Paru installed, skipping...
else
    echo installing Paru...
    sudo pacman -S --needed base-devel git
    git clone https://aur.archlinux.org/paru.git
    cd paru
    makepkg -si
    cd ..
    rm -rf paru/
    echo Paru installed!

fi

echo Updating System...
paru -Syu --noconfirm

install_program() {
 if command -v $1 >/dev/null 2>&1
then
    echo $2 installed, skipping...
else
    echo installing $2...
    paru -S --noconfirm --quiet ${@:3}
    echo $2 installed!
fi   
}

install_program_d() {
    if [ -f $1 ]; 
then
    echo $2 installed, skipping...
else
    echo installing $2...
    paru -Syu --noconfirm --quiet ${@:3}
    echo $2 installed!
}

# Arg 1 = command
# Arg 2 = Text 
# Arg 3 = program to install

install_program start-hyprland Hyprland hyprland
install_program thunar Thunar thunar
install_program grim Grim grim
install_program slurp Slurp slurp
install_program udiskie Udiskie udiskie
install_program wl-copy "WL Clipboard" wl-clipboard
install_program ghostty Ghostty ghostty
install_program kitty Kitty kitty
install_program zoxide Zoxide zoxide
install_program qs QuickShell quickshell noctalia-shell
install_program nvim NeoVim neovim luarocks tree-sitter-cli npm
install_program zsh Zsh zsh starship
install_program tmux Tmux tmux
install_program fastfetch FastFetch fastfetch
install_program pipewire PipeWire pipewire
install_program networkctl NetworkManager networkmanager 
install_program networkctl NetworkManager networkmanager 
install_program sddm SDDM sddm
install_program btop Btop btop
install_program wine Wine wine winetricks
install_program nmcli NetworkManager networkmanager
install_program bluetoothctl Bluetooth bluez bluez-utils
systemctl enable NetworkManager.service
systemctl enable bluetooth.service


# Arg 1 = Directory
# Arg 2 = Text
# Arg 3 = Program to Install

install_program_d /usr/share/icons/Bibata-Modern-Ice/ "Bibata Cursors" bibata-cursor-theme
install_program /usr/lib/gtk-3.0/ Gtk3 gtk3
install_program /usr/lib/qt/ Qt5 qt5
install_program /usr/lib/qt6/ Qt6 qt6
install_program /usr/lib/libhyprqt6engine-common.so HyprQt6Engine hyprqt6engine

install_program_d /usr/share/fonts/noto/ Noto-Fonts noto-fonts
install_program_d /usr/share/fonts/noto-cjk/ Noto-Fonts-cjk noto-fonts-cjk
install_program_d /usr/share/fonts/noto/NotoColorEmoji.ttf Noto-Fonts-Emoji noto-fonts-emoji
install_program_d /usr/share/fonts/TTF/SymbolsNerdFont-Regular.ttf "Nerd Font Symbols" ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-common
install_program_d /usr/share/fonts/TTF/JetBrainsMono-Bold.ttf "Jet Brains Mono Nerd Font" ttf-jetbrains-mono-nerd
install_program_d /usr/share/fonts/TTF/CaskaydiaCoveNerdFont-Bold.ttf "Caskaydia Cove Nerd Font" ttf-cascadia-code-nerd
install_program_d /usr/share/fonts/OTF/ipag.ttf "OTF IPA Font" otf-ipafont
install_program_d /usr/share/fonts/Adwaita/ "Adwaita Font" adwaita-fonts

if [ -d /usr/share/sddm/themes/Makima-SDDM/ ]; then
    break
else
    echo Installling SDDM theme...
    echo Backing Up Old sddm.conf...
    sudo cp /etc/sddm.conf /etc/sddmbackup.conf
    sudo touch /etc/sddm.conf
    sudo cat << EOF | sudo tee /etc/sddm.conf
    [Theme]
        Current=Makima-SDDM
    EOF
    sudo git clone https://github.com/Arnau029/Makima-SDDM.git
	sudo mv Makima-SDDM /usr/share/sddm/themes
    echo SDDM theme installed!
fi

if command -v gpc >/dev/null 2>&1
then
    echo Advanced Copy installed, skipping...
else
    echo installing Advanced Copy...
    cd
    curl https://raw.githubusercontent.com/jarun/advcpmv/master/install.sh --create-dirs -o ./advcpmv/install.sh && (cd advcpmv && sh install.sh)
    sudo mv ./advcpmv/advcp /usr/local/bin/cpg
    sudo mv ./advcpmv/advmv /usr/local/bin/mvg
    echo Advanced Copy installed!
fi   

cat << EOF

----
 ___           _        _ _       _   _
|_ _|_ __  ___| |_ __ _| | | __ _| |_(_) ___  _ __
 | || '_ \/ __| __/ _` | | |/ _` | __| |/ _ \| '_ \
 | || | | \__ \ || (_| | | | (_| | |_| | (_) | | | |
|___|_| |_|___/\__\__,_|_|_|\__,_|\__|_|\___/|_| |_|

 _____ _       _     _              _ _
|  ___(_)_ __ (_)___| |__   ___  __| | |
| |_  | | '_ \| / __| '_ \ / _ \/ _` | |
|  _| | | | | | \__ \ | | |  __/ (_| |_|
|_|   |_|_| |_|_|___/_| |_|\___|\__,_(_)

----
EOF
