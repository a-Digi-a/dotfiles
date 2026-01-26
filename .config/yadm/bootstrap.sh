!#/bin/bash

cat << EOF
----
Digi's Dotfile Install Script!
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
    paru -S --noconfirm ${@:3}
    echo $2 installed!
fi   
}

# Arg 1 = command
# Arg 2 = Text 
# Arg 3 = program to install

install_program start-hyprland Hyprland hyprland
install_program thunar Thunar thunar
install_program asfjsalfk "Bibata Cursors" bibata-cursor-theme
install_program grim Grim grim
install_program slurp Slurp slurp
install_program udiskie Udiskie udiskie
install_program wl-copy "WL Clipboard" wl-clipboard
install_program ghostty Ghostty ghostty
install_program kitty Kitty kitty
install_program qs QuickShell quickshell noctalia-shell
install_program nvim NeoVim neovim luarocks tree-sitter-cli npm
install_program zsh Zsh zsh starship
install_program tmux Tmux tmux
install_program fastfetch FastFetch fastfetch
install_program pipewire PipeWire pipewire
install_program networkctl NetworkManager networkmanager 
install_program sddm SDDM sddm
install_program btop Btop btop
install_program wine Wine wine winetricks
install_program sakfhasf Gtk3 gtk3
install_program sakfhasf Qt5 qt5
install_program sakfhasf Qt6 qt6
install_program sakfhasf HyprQt6Engine hyprqt6engine
install_program sakfhasf Fonts noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-common otf-ipafont adwaita-fonts ttf-jetbrains-mono-nerd ttf-cascadia-code-nerd

echo Installling SDDM theme...
echo Backing Up Old sddm.conf...
sudo cp /etc/sddm.conf /etc/sddmbackup.conf
sudo touch /etc/sddm.conf
sudo cat << EOF | sudo tee /etc/sddm.conf
[Theme]
    Current=Makima-SDDM
EOF

if [ -d /usr/share/sddm/themes/Makima-SDDM/ ]; then
    break
else
    sudo git clone https://github.com/Arnau029/Makima-SDDM.git /usr/share/sddm/themes/
fi

cat << EOF

----
Installation Finished!
----
EOF
