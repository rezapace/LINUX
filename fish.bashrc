#!/bin/bash

# Pastikan script dijalankan sebagai root
if [ "$EUID" -ne 0 ]
  then echo "Silakan jalankan sebagai root"
  exit
fi

# Restart environment
source ~/.bashrc

# Install Fish Shell
apt-get install fish -y

# Install Plugin dengan fish
fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher"
fish -c "fisher install jorgebucaran/nvm.fish"
fish -c "fisher install ilancosman/tide@v4.1.1"
fish -c "fisher install jethrokuan/z"
fish -c "fisher install takashabe/fish-peco"
fish -c "fisher install PatrickF1/fzf.fish"
fish -c "fisher install simnalamburt/shellder"


# Download dan install exa
wget -c http://old-releases.ubuntu.com/ubuntu/pool/universe/r/rust-exa/exa_0.9.0-4_amd64.deb
apt-get install ./exa_0.9.0-4_amd64.deb -y

# Clone repository ghq
git clone https://github.com/x-motemen/ghq .

# Pindah ke direktori ghq dan buat file konfigurasi
cd ghq
touch ~/.config/fish/functions/su.fish
touch ~/.config/fish/config.fish
touch ~/.config/fish/functions/fish_prompt.fish

# Set permission
chmod 700 ~/.config/fish/functions/su.fish
chmod 700 ~/.config/fish/config.fish
chmod 700 ~/.config/fish/functions/fish_prompt.fish

# Hapus semua file yang telah diinstal (opsional)
# rm -f fish mimedb fish_pager fishd fish_indent
# rm /usr/local/share/man/man1/fish*.1
# rm -Rf /usr/local/etc/fish /usr/local/share/fish ~/.config/fish

echo "Script selesai dijalankan."
