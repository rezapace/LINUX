# Linux Bash

Panduan ini memandu Anda melalui instalasi Windows Subsystem for Linux (WSL) untuk mengaktifkan lingkungan Linux di Windows. Dengan langkah-langkah yang jelas, Anda akan menginstal Bash, Golang, dan menangani kesalahan instalasi. Selain itu, panduan ini memberikan solusi untuk mendukung antarmuka grafis (WSLG), serta instruksi instalasi Apache, PHP, MySQL, dan phpMyAdmin untuk memulai pengembangan web dengan mudah. Dengan WSL, Anda dapat menikmati kenyamanan pengembangan Linux langsung di sistem operasi Windows Anda. Selamat menjelajahi dunia Linux tanpa meninggalkan lingkungan Windows Anda! 🚀🐧

## install wsl 1 setup
   ```powershell
   irm "https://github.com/rezapace/ps/raw/main/wsl.ps1" | iex
   ```

# install wsl

<details>
<summary>Instalasi</summary>
wsl / windows subsistem linux merupakan cara agar bisa menjalanakn linux di windows 

## Persyaratan

- download exe yang ada di atas

## Cara Penggunaan

1. Buka terminal / powershell dengan run administrator

   ```
   dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
   ```

   ```
   `dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart`
   ```

   ```
   Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform -NoRestart
   ```

setelah itu restart laptop dan install file exe nya yang wsl 

kemudian set wsl ke versi 2

   ```
   wsl --set-default-version 2
   ```

cara mengecek versi wsl

   ```
   wsl -l -v
   ```


Selamat mencoba!

</details>


# My Bash

<details>
<summary>Instalasi</summary>
Ini adalah skrip bash yang dapat membantu pengguna Linux untuk mengatur prompt, konfigurasi, dan instalasi berbagai alat. Skrip ini menggunakan Starship, yang merupakan prompt yang sangat kustomisasi dan dapat diatur sesuai dengan keinginan pengguna.

## Persyaratan

- Linux (Debian/Ubuntu) / wsl Ubuntu 20.04.5 LTS
- Koneksi internet

## Cara Penggunaan

1. Buka terminal dan jalankan perintah berikut untuk memperbarui sistem:

   ```
   sudo apt update && sudo apt upgrade -y
   ```

2. Buat direktori `.config` dan file `starship.toml` dengan perintah:

   ```
   mkdir ~/.config
   touch ~/.config/starship.toml
   ```

3. Buat direktori `github` di direktori home dengan perintah:

   ```
   mkdir ~/github
   ```

4. Hapus file `.bashrc` dengan perintah:

   ```
   rm ~/.bashrc
   ```

5. Masuk ke direktori `github` dan clone repository `mybash` dengan perintah:

   ```
   cd ~/github git clone https://github.com/christitustech/mybash
   ```

6. Masuk ke direktori `mybash` dan beri izin eksekusi pada file `setup.sh` dengan perintah:

   ```
   cd mybash
   chmod 775 setup.sh
   ```

7. Salin file `starship.toml` ke direktori `.config` dengan perintah:

   ```
   chmod 664 starship.toml
   cp starship.toml ~/.config/
   ```

8. Jalankan file `setup.sh` dengan perintah:

   ```
   ./setup.sh
   ```

9. Ikuti instruksi pada layar untuk mengkonfigurasi prompt dan instalasi berbagai alat.

Selamat mencoba!

</details>

# Golang

<details>
<summary>Instalasi</summary>

Berikut adalah langkah-langkah instalasi Golang pada sistem operasi Linux:

1. Unduh file instalasi Golang dari situs resmi https://golang.org/dl/

```
wget https://go.dev/dl/go1.21.0.linux-amd64.tar.gz
```

2. Ekstrak file instalasi yang sudah diunduh

```
sudo tar -xvf go1.21.0.linux-amd64.tar.gz
```

3. Pindahkan direktori Golang ke direktori /usr/local

```
sudo mv go /usr/local
```

4. Tambahkan variabel lingkungan Golang pada file .bashrc

```
sudo nano ~/.bashrc
```

Kemudian tambahkan baris berikut pada akhir file:

```
# Go Global variables
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
```

5. Simpan perubahan pada file .bashrc dengan menekan tombol Ctrl + o, kemudian tekan enter. Keluar dari editor nano dengan menekan tombol Ctrl + x.

6. Muat ulang file .bashrc agar perubahan dapat diterapkan

```
source ~/.bashrc
```

Setelah melakukan langkah-langkah di atas, Golang sudah berhasil diinstal pada sistem operasi Linux yang digunakan.

</details>

# Error Install

<details>
<summary>Fix</summary>
Jika Anda mengalami masalah saat menginstal program atau perangkat lunak di sistem operasi Ubuntu atau Debian, Anda dapat mencoba beberapa langkah di bawah ini untuk memperbaiki masalah tersebut.

## Langkah 1: Update dan Upgrade

Jalankan perintah berikut untuk memperbarui daftar paket dan mengupgrade paket yang sudah terinstal ke versi terbaru.

```bash
sudo apt update && sudo apt upgrade -y
```

## Langkah 2: Tambahkan Repository

Jika Anda masih mengalami masalah setelah mengupdate dan mengupgrade sistem Anda, Anda dapat mencoba menambahkan repository utama dan repository universe, restricted, dan multiverse menggunakan perintah berikut.

```bash
sudo add-apt-repository main
sudo add-apt-repository universe
sudo add-apt-repository restricted
sudo add-apt-repository multiverse
```

Dengan menambahkan repository ini, Anda akan mendapatkan akses ke lebih banyak paket dan perangkat lunak yang mungkin dibutuhkan oleh sistem Anda.

## Kesimpulan

Dalam kebanyakan kasus, langkah-langkah di atas dapat membantu Anda memperbaiki masalah saat menginstal program atau perangkat lunak di sistem operasi Ubuntu atau Debian. Jika masalah masih berlanjut, Anda bisa mencari solusi lain atau meminta bantuan pada forum atau komunitas pengguna Linux.

</details>

# WSLG

<details>
<summary>Instalasi</summary>
WSLG adalah singkatan dari Windows Subsystem for Linux GUI. Ini adalah fitur baru yang diperkenalkan oleh Microsoft sebagai bagian dari Windows Subsystem for Linux 2 (WSL 2) yang memungkinkan pengguna untuk menjalankan aplikasi GUI Linux di Windows 10 tanpa memerlukan pengaturan tambahan.

## Cara Menginstall WSLG

Untuk menginstall WSLG, Anda perlu memastikan bahwa Anda memiliki Windows 10 dengan versi 21364 ke atas dan menggunakan WSL 2. Kemudian, ikuti langkah-langkah berikut:

1. Buka Windows PowerShell sebagai Administrator dan jalankan perintah berikut:

```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

2. Kemudian, jalankan perintah ini:

```
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

3. Setelah itu, restart komputer Anda.

4. Selanjutnya, unduh paket update kernel Linux terbaru dari [Microsoft Store](https://aka.ms/wsl2kernel). Setelah unduhan selesai, klik dua kali pada paket untuk menginstalnya.

5. Jalankan perintah berikut untuk mengatur WSL 2 sebagai versi default:

```
wsl --set-default-version 2
```

6. Terakhir, unduh dan instal aplikasi WSLG dari [Microsoft Store](https://aka.ms/wslg).

## Paket Aplikasi yang Dapat Diinstall pada WSLG

Setelah menginstall WSLG, Anda dapat menginstal paket aplikasi Linux GUI seperti Gedit, GIMP, Nautilus, dan VLC menggunakan perintah apt. Berikut adalah beberapa contoh perintah yang dapat Anda gunakan:

1. Gedit

```
sudo apt install gedit -y
```

2. GIMP

```
sudo apt install gimp -y
```

3. Nautilus

```
sudo apt install nautilus -y
```

4. VLC

```
sudo apt install vlc -y
```

5. X11 apps

```
sudo apt install x11-apps -y
```

6. Google Chrome

```
cd /tmp
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt install --fix-broken -y
sudo dpkg -i google-chrome-stable_current_amd64.deb
```

7. Microsoft Teams

```
cd /tmp
sudo curl -L -o "./teams.deb" "https://teams.microsoft.com/downloads/desktopurl?env=production&plat=linux&arch=x64&download=true&linuxArchiveType=deb"
sudo apt install ./teams.deb -y
```

8. Microsoft Edge Dev Browser

```
sudo curl https://packages.microsoft.com/repos/edge/pool/main/m/microsoft-edge-dev/microsoft-edge-dev_101.0.1193.0-1_amd64.deb -o /tmp/edge.deb
sudo apt install /tmp/edge.deb -y
```

## Kesimpulan

WSLG memungkinkan pengguna Windows 10 untuk menjalankan aplikasi GUI Linux tanpa perlu memerlukan pengaturan tambahan. Dengan mengikuti langkah-langkah di atas, Anda dapat menginstal WSLG dan paket aplikasi Linux GUI yang diinginkan.

</details>

# Apache, PHP, MySQL, phpMyAdmin

<details>
<summary>Instalasi</summary>
Tutorial ini akan memberikan panduan instalasi Apache, PHP, MySQL, dan phpMyAdmin pada sistem operasi Ubuntu.

## Langkah 1: Instalasi Apache

Pertama-tama, buka terminal dan jalankan perintah berikut untuk menginstal Apache:

### menginstall apache2

```bash
sudo apt-get install apache2
```

### menginstall libapache2

```bash
sudo apt-get install php libapache2-mod-php
```

### masuk ke directory

```bash
cd /var/www/html/
```

### mengubah permission

```bash
sudo chown thecodeholic:thecodeholic -R ./
```

### mengubah isi dari envvars

```bash
sudo gedit /etc/apache2/envvars
```

### mengubah isi dari envvars di bagian ini

```
export APACHE_RUN_FILE=www-data
export APACHE_RUN_GROUP=www-data
```

### mengubah isi dari envvars di bagian ini menjadi ini

```
export APACHE_RUN_FILE=thecodeholic
export APACHE_RUN_GROUP=thecodeholic
```

## Langkah 2: mysql-server

### Cara Mengatasi Masalah Login MySQL pada Ubuntu

Pada artikel ini, kita akan membahas cara mengatasi masalah login MySQL pada Ubuntu. Masalah ini biasanya terjadi saat kita mencoba untuk login ke MySQL menggunakan akun root, namun gagal karena pesan error authentication.

Untuk mengatasi masalah ini, kita perlu melakukan beberapa langkah berikut:

1. Masuk ke MySQL sebagai root dengan menggunakan perintah berikut:

```bash
   sudo mysql
```

2. Setelah masuk ke MySQL, kita perlu mengubah password root dengan menggunakan perintah berikut:

```bash
   ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'p';
```

Ganti 'p' dengan password yang diinginkan.

3. Setelah itu, keluar dari MySQL dengan menekan tombol ctrl+Z.

4. Selanjutnya, kita perlu menonaktifkan plugin validasi password MySQL dengan menggunakan perintah berikut:

```bash
    SET GLOBAL validate_password.length = 0;
    SET GLOBAL validate_password.mixed_case_count = 0;
    SET GLOBAL validate_password.number_count = 0;
    SET GLOBAL validate_password.policy = 0;
    SET GLOBAL validate_password.special_char_count = 0;
```

```bash
   CEK KEADAAN PASSWORD REQUIRMENT
   SHOW VARIABLES LIKE 'validate_password%';
```

Hal ini diperlukan karena plugin validasi password pada MySQL dapat menyebabkan masalah login.

5. selanjutnya akan membuat username dan password yang di gunakan.

```bash
   create user 'root'@'localhost' identified by 'p';
```

## Langkah 3: phpmyadmin

1. Masuk ke MySQL sebagai root dengan menggunakan perintah berikut:

```bash
   sudo apt-get install phpmyadmin
```

2. klick space (buat milih) arrow key, trus klick yes (spasi) masukan pasword p

## Langkah : run,status,stop,restart

### perintah untuk apache

```bash
    sudo service apache2 start
    sudo service apache2 stop
    sudo service apache2 status
    sudo service apache2 restart
```

### perintah untuk mysql

```bash
    sudo service mysql start
    sudo service mysql stop
    sudo service mysql status
    sudo service mysql restart
```

### Jika terjadi error
```bash
ALTER USER 'root'@'localhost' IDENTIFIED BY 'p';
sudo ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin
``` 

</details>

# Fish

<details>
<summary>Instalasi</summary>
# Setup Fish Programming Language

## Deskripsi

Ini adalah instruksi untuk menginstall dan mengkonfigurasi pemrograman Fish. Ini akan meliputi menginstal Fish, install plugin dan pembaruan file konfigurasi.

## Instruksi

1. Restart
   ```
   Source ~/.bashrc
   ```
2. Install Fish
   ```
   sudo apt-get install fish
   ```
3. Install Plugin
   ```
   curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
   fisher install jorgebucaran/nvm.fish
   fisher install ilancosman/tide@v4.1.1
   fisher install jethrokuan/z
   wget -c http://old-releases.ubuntu.com/ubuntu/pool/universe/r/rust-exa/exa_0.9.0-4_amd64.deb
   sudo apt-get install ./exa_0.9.0-4_amd64.deb
   go install github.com/x-motemen/ghq@latest
   git clone https://github.com/x-motemen/ghq .
   fisher install takashabe/fish-peco
   ```
4. Pindah ke direktori ghq
   ```
   cd ghq
   ```
5. Buat file konfigurasi
   ```
   touch ~/.config/fish/functions/su.fish
   touch ~/.config/fish/config.fish
   touch ~/.config/fish/functions/fish_prompt.fish
   ```
6. Set permission
   ```
   chmod 700 ~/.config/fish/functions/su.fish
   chmod 700 ~/.config/fish/config.fish
   chmod 700 ~/.config/fish/functions/fish_prompt.fish
   ```
7. Edit file konfigurasi
   ```
   sudo nano ~/.config/fish/functions/fish_prompt.fish
   ```
8. Baca file konfigurasi
   ```
   ~/.config/fish/config.fish
   .config/fish/config.fish
   ```
9. Hapus semua file yang telah diinstal
   ```
   rm -f fish mimedb fish_pager fishd fish_indent
   rm /usr/local/share/man/man1/fish*.1
   rm -Rf /usr/local/etc/fish /usr/local/share/fish ~/.config/fish
   ```

## Sumber Referensi

- sc
- https://github.com/craftzdog/dotfiles-public
- https://wiki.archlinux.org/title/fish#Command_completion
- https://fishshell.com/docs/current/cmds/alias.html

## Ketika memasukkan fish ls

- jorgebucaran/fisher
- jorgebucaran/nvm.fish
- ilancosman/tide@v4.1.1
- jethrokuan/z
- simnalamburt/shellder
- takashabe/fish-peco
</details>
