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

#Golang

<details>
<summary>Instalasi Golang</summary>

Berikut adalah langkah-langkah instalasi Golang pada sistem operasi Linux:

1. Unduh file instalasi Golang dari situs resmi https://golang.org/dl/

```
wget https://dl.google.com/go/go1.20.2.linux-amd64.tar.gz
```

2. Ekstrak file instalasi yang sudah diunduh

```
sudo tar -xvf go1.20.2.linux-amd64.tar.gz
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
