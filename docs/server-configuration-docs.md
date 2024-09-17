# Dokumen Konfigurasi Server

Dokumen ini berisi panduan lengkap tentang cara mengonfigurasi server untuk proyek **Network Simulator**. Ikuti langkah-langkah di bawah ini untuk memastikan server Anda dikonfigurasi dengan benar dan siap digunakan.

## Prasyarat

Sebelum memulai konfigurasi, pastikan Anda memiliki:

- Akses root atau sudo ke server.
- Sistem operasi yang kompatibel (misalnya, Ubuntu 20.04, CentOS 8).
- Koneksi internet yang stabil.

## 1. Instalasi dan Pembaruan Sistem

### Instalasi Pembaruan Sistem

```bash
sudo apt update && sudo apt upgrade -y
```
### Untuk distribusi berbasis RPM seperti CentOS:

```bash
sudo yum update -y
```

### Instalasi Paket yang Diperlukan
Di Ubuntu/Debian:

```bash
sudo apt install -y net-tools iproute2 vim curl
```

Di CentOS/RHEL:

```bash
sudo yum install -y net-tools iproute vim curl
```

## 2. Konfigurasi Jaringan

### Mengonfigurasi IP Statis
Edit file konfigurasi jaringan:

Di Ubuntu/Debian
Edit file /etc/netplan/01-netcfg.yaml:

```bash
network:
  version: 2
  ethernets:
    ens33:
      addresses:
        - 192.168.1.100/24
      gateway4: 192.168.1.1
      nameservers:
        addresses:
          - 8.8.8.8
          - 8.8.4.4
```
Terapkan perubahan:

```bash
sudo netplan apply
```

Di CentOS/RHEL
Edit file /etc/sysconfig/network-scripts/ifcfg-ens33:

```bash
DEVICE=ens33
BOOTPROTO=static
ONBOOT=yes
IPADDR=192.168.1.100
NETMASK=255.255.255.0
GATEWAY=192.168.1.1
DNS1=8.8.8.8
DNS2=8.8.4.4
```

Restart layanan jaringan

```bash
sudo systemctl restart network
```

## 3. Instalasi dan Konfigurasi Software

## Instalasi Server Web (Apache/Nginx)
Di Ubuntu/Debian:

```bash
sudo apt install -y apache2
```

Di CentOS/RHEL:

```bash
sudo yum install -y httpd
```

### Konfigurasi Apache
Edit file konfigurasi utama Apache /etc/apache2/apache2.conf:

```bash
# Tambahkan konfigurasi sesuai kebutuhan
```

Restart Apache:
```bash
sudo systemctl restart apache2
```

### Instalasi dan Konfigurasi Database (MySQL/MariaDB)
Di Ubuntu/Debian:

```bash
sudo apt install -y mysql-server
```

Di CentOS/RHEL:

```bash
sudo yum install -y mariadb-server
```

### Konfigurasi MySQL
Akses MySQL:

```bash
sudo mysql
```

Buat database dan pengguna sesuai kebutuhan:

```bash
CREATE DATABASE mydatabase;
CREATE USER 'myuser'@'localhost' IDENTIFIED BY 'mypassword';
GRANT ALL PRIVILEGES ON mydatabase.* TO 'myuser'@'localhost';
FLUSH PRIVILEGES;
EXIT;
```

## 4. Keamanan Server
### Menyiapkan Firewall
Di Ubuntu/Debian:

```bash
sudo ufw allow 22/tcp
sudo ufw allow 80/tcp
sudo ufw enable
```

Di CentOS/RHEL:

```bash
sudo yum install -y mariadb-server
```

### Mengamankan Akses SSH
Edit file /etc/ssh/sshd_config:

```bash
PermitRootLogin no
PasswordAuthentication no
```

Restart SSH:

```bash
sudo systemctl restart sshd
```

## 5. Verifikasi dan Uji Konfigurasi
- Verifikasi Jaringan: Gunakan ping dan ifconfig untuk memastikan konfigurasi IP benar.
- Verifikasi Web Server: Akses server web melalui browser atau menggunakan curl untuk memastikan layanan berjalan.
- Verifikasi Database: Gunakan klien MySQL untuk memastikan database dapat diakses dan dikonfigurasi dengan benar.

## 6. Dokumentasi Tambahan
Untuk dokumentasi lebih lanjut atau konfigurasi tambahan, kunjungi:

- Dokumentasi Apache
- Dokumentasi MySQL
- Dokumentasi Ubuntu
- Dokumentasi CentOS

