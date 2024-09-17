#!/bin/bash

# Update dan upgrade sistem
apt-get update && apt-get upgrade -y

# Instalasi paket dasar
apt-get install -y net-tools vim curl
