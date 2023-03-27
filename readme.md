Ini adalah script bash yang dapat digunakan untuk mengatur lingkungan kerja pada terminal di Linux. Berikut adalah langkah-langkahnya:

1. Pertama, jalankan perintah "sudo apt update && sudo apt upgrade -y" untuk memperbarui dan mengupgrade sistem Linux kamu.

2. Buat direktori baru dengan perintah "mkdir ~/.config" untuk menyimpan file konfigurasi.

3. Buat file baru untuk konfigurasi Starship dengan perintah "touch ~/.config/starship.toml".

4. Buat direktori baru dengan perintah "mkdir github" untuk menyimpan file dari GitHub.

5. Hapus file bashrc yang lama dengan perintah "rm ~/.bashrc".

6. Pindah ke direktori "github" dengan perintah "cd github".

7. Clone repository "mybash" dari GitHub dengan perintah "git clone https://github.com/christitustech/mybash".

8. Pindah ke direktori "mybash" dengan perintah "cd mybash".

9. Ubah izin file "setup.sh" dengan perintah "chmod 775 setup.sh".

10. Ubah izin file "starship.toml" dengan perintah "chmod 664 starship.toml".

11. Jalankan script "setup.sh" dengan perintah "./setup.sh".

Dengan menjalankan script bash ini, kamu dapat mengatur lingkungan kerja pada terminal sesuai dengan preferensi kamu. Selamat mencoba!