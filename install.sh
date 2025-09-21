#!/bin/bash
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#dotfiles created by rediskazavr
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#UPDATE&INSTALL PACKAGES
sudo pacman -Syu
sudo pacman -S git base-devel neovim fastfetch cava cmatrix maim btop ncmpcpp lf zsh ttf-font-awesome ttf-jetbrains-mono ttf-jetbrains-mono-nerd --noconfirm

#CREATE&COPY CONFIGS
mkdir -p ~/.config
cp -r ~/wsl-dotfiles/dotfiles/fastfetch/ ~/.config/

#INSTALL YAY
cd ~/wsl-dotfiles/packages/yay/
makepkg -si --noconfirm
yay -Syu --noconfirm

#INSTALL TTY-CLOCK
yay -S tty-clock --noconfirm

#INSTALL POKEMON-COLORSCRIPT
yay -S pokemon-colorscript --noconfirm

# DOWNLOAD NVCHAD
git clone https://github.com/ProgrammingRainbow/NvChad-2.5 ~/.config/nvim

# REMOVE NVIM OLD CONFIGS
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim

# INSTALL NVIM PLUGINS
cd ~/.config/nvim
nvim  

#REBOOT
sudo reboot