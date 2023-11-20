#!/bin/bash

# Pastikan script dijalankan sebagai root

# Install Fish Shell
sudo apt install curl -y
sudo apt-get install fish -y

# Pindah ke direktori ghq dan buat file konfigurasi
mkdir -p "$HOME/.config/fish"
touch "$HOME/.config/fish/functions/su.fish"
touch "$HOME/.config/fish/functions/fish_prompt.fish"

# Set permission
chmod 700 ~/.config/fish/functions/su.fish
chmod 700 ~/.config/fish/config.fish
chmod 700 ~/.config/fish/functions/fish_prompt.fish

# Install Plugin dengan fish
sudo fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher"
sudo fish -c "fisher install jorgebucaran/nvm.fish"
sudo fish -c "fisher install jethrokuan/z"
sudo fish -c "fisher install takashabe/fish-peco"
sudo fish -c "fisher install edc/bass"
sudo fish -c "fisher install PatrickF1/fzf.fish"
sudo fish -c "fisher install simnalamburt/shellder"
sudo fish -c "sudo apt install exa"
sudo fish -c "sudo apt install peco"
sudo fish -c "sudo apt install fzf"
sudo fish -c "sudo apt install trash-cli"

cp -i "$HOME/github/LINUX/fish/config.fish" "$HOME/.config/fish/"

echo "Script selesai dijalankan."

# tambahan untuk tema
# git clone https://github.com/oh-my-fish/oh-my-fish
# cd oh-my-fish
# bin/install --offline
# sudo fish -c "omf install bobthefish"


# sudo apt install curl
# sudo fish -c "sudo snap install --classic code"
# curl -L github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish

# touch ~/.config/fish/functions/su.fish
# touch ~/.config/fish/config.fish
# touch ~/.config/fish/functions/fish_prompt.fish