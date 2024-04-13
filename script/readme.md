# cara penggunaan nya 

### Create a new file called "go.sh"
```bash
touch go.sh
```
### Open the "go.sh" file in the nano text editor
```bash
nano go.sh
```
### Change the permissions of the "go.sh" file to make it executable
```bash
chmod +x go.sh
```
### Execute the "go.sh" script
```bash
./go.sh
```
### Note: The "go.sh" script will install Apache, MySQL, and PHP on your system
```bash
chdmod 775 go.sh
```
### Note: The "go.sh" script will install Apache, MySQL, and PHP on your system
```bash
sudo ./go.sh
```

## Note : untuk pasword mysl dll adalah  p
untuk mengecek apakah sudah terinstall
```bash
apache2 -v
mysql --version
php -v
```

## Jika terjadi error
```bash
ALTER USER 'root'@'localhost' IDENTIFIED BY 'p';
sudo ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin
``` 