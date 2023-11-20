#!/bin/bash

# Langkah 1: Unduh file instalasi Golang
wget https://go.dev/dl/go1.21.4.linux-amd64.tar.gz

# Langkah 2: Ekstrak file instalasi Golang
sudo tar -C /usr/local -xzf go1.21.4.linux-amd64.tar.gz

# Langkah 3: Tambahkan variabel lingkungan Golang ke .bashrc
echo 'export GOROOT=/usr/local/go' >> ~/.bashrc
echo 'export GOPATH=$HOME/go' >> ~/.bashrc
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bashrc

# Langkah 4: Muat ulang .bashrc
source ~/.bashrc

# Langkah 5: Hapus file instalasi yang sudah diunduh
rm go1.21.4.linux-amd64.tar.gz

config_file=~/.config/fish/config.fish
# Pastikan file konfigurasi fish ada
if [ ! -f "$config_file" ]; then
    echo "File konfigurasi $config_file tidak ditemukan. Buat file tersebut terlebih dahulu."
    exit 1
fi

# Tambahkan konfigurasi ke file config.fish
echo 'set -x GOROOT /usr/local/go' >> "$config_file"
echo 'set -x GOPATH $HOME/go' >> "$config_file"
echo 'set -x PATH $GOPATH/bin $GOROOT/bin $PATH' >> "$config_file"

echo "Konfigurasi telah ditambahkan ke $config_file"

echo "Instalasi Golang selesai."
