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

###Mengonfigurasi IP Statis
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
