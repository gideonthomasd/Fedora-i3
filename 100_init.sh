#!/bin/bash

sudo dnf install pcmanfm rofi dmenu polybar alacritty xfce4-terminal feh lxappearance lxtask geany picom neofetch yt-dlp parcellite audacious lxpolkit jgmenu candy-icon-theme yaru-gtk2-theme breeze-cursor-theme stockfish alacritty jetbrains-mono-fonts-all -y

sudo dnf install dnf-plugins-core -y

sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo

sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

sudo dnf install brave-browser -y

mkdir -p ~/.local/share/fonts
cd Mononoki
cp -r * ~/.local/share/fonts
cd ..

mkdir -p ~/.config/jgmenu
cp jgmenurc ~/.config/jgmenu
cp append.csv ~/.config/jgmenu
cp prepend.csv ~/.config/jgmenu

cp log.sh ~/log.sh
cp bashrc ~/.bashrc

mkdir -p ~/Pictures/wallpapers
cd wallpapers
cp -r * ~/Pictures/wallpapers
cd ..

mkdir -p ~/.config/rofi

cd rofi
cd launchers
cd colorful
chmod +x *.sh
cd ..
cd ..
cd ..

cd rofi
cp -r * ~/.config/rofi
cd ..

mkdir -p ~/.config/xfce4/terminal
cp terminalrc ~/.config/xfce4/terminal/terminalrc

mkdir -p ~/.config/picom
cp picom.conf ~/.config/picom/picom.conf

mkdir -p ~/.config/alacritty

cd alacritty
cp -r * ~/.config/alacritty
cd ..

cd i3
cd polybar
chmod +x *.sh
cd ..
cd bin
chmod +x *.sh
cd ..
cd ..


mkdir -p ~/.config/i3
cd i3
cp -r * ~/.config/i3
cd ..

sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
