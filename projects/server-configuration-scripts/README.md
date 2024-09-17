# Server Configuration Scripts

## Deskripsi

Skrip otomatisasi untuk konfigurasi server Linux dan Windows. Skrip ini dirancang untuk menyederhanakan dan mempercepat proses pengaturan server, termasuk konfigurasi jaringan, instalasi perangkat lunak, dan pengaturan sistem.

## Fitur

- Konfigurasi dasar server Linux
- Konfigurasi dasar server Windows
- Instalasi perangkat lunak umum

## Cara Menggunakan

### Linux Setup

1. **Unduh Skrip**: Ambil file [setup.sh](linux/setup.sh).
2. **Jalankan Skrip**: 
   ```bash
   chmod +x setup.sh
   sudo ./setup.sh

    **Penjelasan**:
   - `chmod +x setup.sh`: Memberikan izin eksekusi pada skrip.
   - `sudo ./setup.sh`: Menjalankan skrip dengan hak akses superuser.

### Windows Setup

1. **Unduh Skrip**:
   - Unduh file skrip `setup.ps1` dari folder [windows](windows/setup.ps1) ke server Windows Anda.

2. **Setel Kebijakan Eksekusi**:
   - Buka PowerShell sebagai Administrator dan jalankan perintah berikut untuk mengizinkan eksekusi skrip:
     ```powershell
     Set-ExecutionPolicy RemoteSigned
     ```

   **Penjelasan**:
   - `Set-ExecutionPolicy RemoteSigned`: Mengizinkan eksekusi skrip lokal dan memerlukan tanda tangan untuk skrip dari sumber luar.

3. **Jalankan Skrip**:
   - Navigasikan ke direktori tempat Anda menyimpan `setup.ps1` dan jalankan dengan perintah:
     ```powershell
     .\setup.ps1
     ```

   **Penjelasan**:
   - `.\setup.ps1`: Menjalankan skrip PowerShell yang ada di direktori saat ini.

## Contoh Skrip

### Linux (setup.sh)

```bash
#!/bin/bash

# Update dan upgrade sistem
apt-get update && apt-get upgrade -y

# Instalasi paket dasar
apt-get install -y net-tools vim curl
