#!/bin/bash

# Pastikan script dijalankan sebagai root
if [ "$EUID" -ne 0 ]
  then echo "Silakan jalankan sebagai root"
  exit
fi

# Install Fish Shell
sudo apt install curl -y
apt-get install fish -y

# Pindah ke direktori ghq dan buat file konfigurasi
mkdir -p ~/.config/fish
cp /home/r/github/LINUX/script/config.fish ~/.config/fish/config.fish
touch ~/.config/fish/functions/su.fish
touch ~/.config/fish/functions/fish_prompt.fish

# Set permission
chmod 700 ~/.config/fish/functions/su.fish
chmod 700 ~/.config/fish/config.fish
chmod 700 ~/.config/fish/functions/fish_prompt.fish

# Install Plugin dengan fish
fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher"
fish -c "fisher install jorgebucaran/nvm.fish"
fish -c "fisher install jethrokuan/z"
fish -c "fisher install takashabe/fish-peco"
fish -c "fisher install edc/bass"
fish -c "fisher install PatrickF1/fzf.fish"
fish -c "fisher install simnalamburt/shellder"
fish -c "sudo apt install exa"
fish -c "sudo apt install peco"
fish -c "sudo apt install fzf"
fish -c "sudo apt install trash-cli"



echo "Script selesai dijalankan."

# tambahan untuk tema
# git clone https://github.com/oh-my-fish/oh-my-fish
# cd oh-my-fish
# bin/install --offline
# fish -c "omf install bobthefish"


# sudo apt install curl
# fish -c "sudo snap install --classic code"
# curl -L github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish

# touch ~/.config/fish/functions/su.fish
# touch ~/.config/fish/config.fish
# touch ~/.config/fish/functions/fish_prompt.fish
