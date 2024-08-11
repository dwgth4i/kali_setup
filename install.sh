#!/bin/bash

sudo apt update && sudo apt upgrade -y

mkdir ~/tools; cd ~/tools; git clone https://github.com/CravateRouge/bloodyAD

sudo apt-get -y update && sudo apt-get -y install gcc clang libclang-dev libgssapi-krb5-2 libkrb5-dev libsasl2-modules-gssapi-mit musl-tools gcc-mingw-w64-x86-64
cd ~/tools; git clone https://github.com/NH-RED-TEAM/RustHound
cd RustHound
make install

mkdir ~/tools/sliver; cd ~/tools/sliver; wget https://github.com/BishopFox/sliver/releases/download/v1.5.42/sliver-server_linux; chmod +X ~/tools/sliver-server_linux

mkdir -p ~/.local/share/fonts/

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Iosevka.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/RobotoMono.zip

unzip Iosevka.zip -d ~/.local/share/fonts/
unzip RobotoMono.zip -d ~/.local/share/fonts/

fc-cache -fv

wget https://github.com/barnumbirr/alacritty-debian/releases/download/v0.10.0-rc4-1/alacritty_0.10.0-rc4-1_amd64_bullseye.deb
sudo dpkg -i alacritty_0.10.0-rc4-1_amd64_bullseye.deb
sudo apt install -f

sudo apt install burpsuite
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt install ./google-chrome-stable_current_amd64.deb


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# add zsh-autosuggestions to .zshrc plugins

curl -sS https://starship.rs/install.sh | sh
cd ~; wget https://raw.githubusercontent.com/dwgth4i/kali_setup/main/starship.toml
mv starship.toml ./.config/starship.toml
# add this line into .zshrc: 
# eval "$(starship init zsh)"

# wallpaper at 
# https://www.yuumeiart.com/#/revive/


