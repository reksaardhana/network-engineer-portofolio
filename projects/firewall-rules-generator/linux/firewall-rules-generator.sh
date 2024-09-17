#!/bin/bash

# Cek apakah skrip dijalankan dengan hak akses superuser
if [ "$(id -u)" -ne "0" ]; then
  echo "Skrip ini memerlukan hak akses superuser. Jalankan dengan sudo."
  exit 1
fi

# Menambahkan aturan untuk mengizinkan akses ke port 80 (HTTP) dan 443 (HTTPS)
echo "Menambahkan aturan untuk mengizinkan akses ke port 80 (HTTP) dan 443 (HTTPS)..."
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j ACCEPT

# Menolak semua akses yang tidak diizinkan
echo "Menolak semua akses yang tidak diizinkan..."
iptables -A INPUT -j DROP

# Menyimpan aturan
echo "Menyimpan aturan..."
iptables-save > /etc/iptables/rules.v4

echo "Aturan firewall berhasil diperbarui."
