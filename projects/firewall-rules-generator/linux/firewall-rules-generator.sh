```bash
#!/bin/bash

# Menambahkan aturan untuk mengizinkan akses ke port 80 dan 443
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j ACCEPT

# Menolak semua akses yang tidak diizinkan
iptables -A INPUT -j DROP

# Menyimpan aturan
iptables-save > /etc/iptables/rules.v4
