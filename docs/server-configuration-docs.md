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
####Di Ubuntu/Debian:

