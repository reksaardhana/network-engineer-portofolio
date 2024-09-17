# Firewall Rules Generator

## Deskripsi

Firewall Rules Generator adalah alat yang dirancang untuk mempermudah pembuatan dan pengelolaan aturan firewall. Alat ini mendukung pembuatan aturan untuk berbagai sistem firewall dan perangkat, memungkinkan administrator jaringan untuk mengkonfigurasi aturan keamanan dengan lebih mudah dan cepat.

## Fitur

- **Pembuatan Aturan Firewall**: Otomatisasi pembuatan aturan firewall untuk sistem Linux (iptables) dan Windows (netsh).
- **Template Aturan**: Menyediakan template untuk berbagai jenis aturan, termasuk akses ke port, IP address, dan protokol.
- **Pengaturan Otomatis**: Skrip yang dapat langsung diterapkan pada sistem tanpa perlu penyesuaian manual yang rumit.

## Cara Menggunakan

### 1. Persiapan

Pastikan Anda memiliki akses yang diperlukan untuk mengubah aturan firewall pada sistem Anda dan bahwa Anda menjalankan skrip dengan hak akses yang sesuai (misalnya, `sudo` pada Linux atau sebagai Administrator pada Windows).

### 2. Menggunakan Firewall Rules Generator di Linux

1. **Unduh Skrip**:
   - Unduh file skrip `firewall-rules-generator.sh` dari folder [linux](linux/firewall-rules-generator.sh) ke server Linux Anda.

2. **Jalankan Skrip**:
   - Buka terminal dan navigasikan ke direktori tempat Anda menyimpan `firewall-rules-generator.sh`.
   - Berikan izin eksekusi dan jalankan skrip dengan perintah berikut:
     ```bash
     chmod +x firewall-rules-generator.sh
     sudo ./firewall-rules-generator.sh
     ```

   **Penjelasan**:
   - `chmod +x firewall-rules-generator.sh`: Memberikan izin eksekusi pada skrip.
   - `sudo ./firewall-rules-generator.sh`: Menjalankan skrip dengan hak akses superuser untuk mengubah aturan firewall.

### 3. Menggunakan Firewall Rules Generator di Windows

1. **Unduh Skrip**:
   - Unduh file skrip `firewall-rules-generator.ps1` dari folder [windows](windows/firewall-rules-generator.ps1) ke server Windows Anda.

2. **Setel Kebijakan Eksekusi**:
   - Buka PowerShell sebagai Administrator dan jalankan perintah berikut untuk mengizinkan eksekusi skrip:
     ```powershell
     Set-ExecutionPolicy RemoteSigned
     ```

   **Penjelasan**:
   - `Set-ExecutionPolicy RemoteSigned`: Mengizinkan eksekusi skrip lokal dan memerlukan tanda tangan untuk skrip dari sumber luar.

3. **Jalankan Skrip**:
   - Navigasikan ke direktori tempat Anda menyimpan `firewall-rules-generator.ps1` dan jalankan dengan perintah:
     ```powershell
     .\firewall-rules-generator.ps1
     ```

   **Penjelasan**:
   - `.\firewall-rules-generator.ps1`: Menjalankan skrip PowerShell yang ada di direktori saat ini.

