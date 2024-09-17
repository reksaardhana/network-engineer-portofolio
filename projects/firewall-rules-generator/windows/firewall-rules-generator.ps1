# Menjalankan PowerShell sebagai Administrator diperlukan untuk membuat aturan firewall.

# Menambahkan aturan untuk mengizinkan akses ke port 80 (HTTP) dan 443 (HTTPS)
Write-Output "Menambahkan aturan untuk mengizinkan akses ke port 80 (HTTP) dan 443 (HTTPS)..."
New-NetFirewallRule -DisplayName "Allow HTTP" -Direction Inbound -Protocol TCP -LocalPort 80 -Action Allow
New-NetFirewallRule -DisplayName "Allow HTTPS" -Direction Inbound -Protocol TCP -LocalPort 443 -Action Allow

# Menolak semua akses yang tidak diizinkan (opsional)
# Uncomment baris berikut untuk menolak semua akses yang tidak diizinkan
# Write-Output "Menolak semua akses yang tidak diizinkan..."
# New-NetFirewallRule -DisplayName "Block All Other" -Direction Inbound -Action Block -Enabled True

Write-Output "Aturan firewall berhasil diperbarui."

