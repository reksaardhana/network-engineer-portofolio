# Update dan upgrade sistem
Install-WindowsUpdate -AcceptAll -AutoReboot

# Instalasi paket dasar
Install-WindowsFeature -Name Web-Server
