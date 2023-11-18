#!/bin/bash

# Langkah 1: Memperbarui sistem
sudo apt update && sudo apt upgrade -y

# Langkah 2: Membuat direktori .config dan file starship.toml
mkdir -p ~/.config
touch ~/.config/starship.toml

# Langkah 3: Membuat direktori github di direktori home
mkdir ~/github

# Langkah 4: Menghapus file .bashrc
rm ~/.bashrc

# Langkah 5: Clone repository bash
cd ~/github
git clone https://github.com/rezapace/bash

# Langkah 6: Masuk ke direktori bash dan beri izin eksekusi pada file setup.sh
cd bash
chmod 775 setup.sh

# Langkah 7: Menyalin file starship.toml ke direktori .config
chmod 664 starship.toml
cp starship.toml ~/.config/

# Langkah 8: Menjalankan file setup.sh
./setup.sh

# Langkah 9: Ikuti instruksi pada layar untuk mengkonfigurasi prompt dan instalasi berbagai alat

echo "Selamat mencoba!"
