#!/bin/bash
set -e

# Railway provides $PORT dynamically - Apache must listen on it
PORT="${PORT:-80}"

# Update Apache to listen on the correct port
sed -i "s/Listen 80/Listen ${PORT}/" /etc/apache2/ports.conf
sed -i "s/:80>/:${PORT}>/" /etc/apache2/sites-enabled/000-default.conf

# Remove conflicting MPM modules, enable only prefork
rm -f /etc/apache2/mods-enabled/mpm_*.load \
      /etc/apache2/mods-enabled/mpm_*.conf
a2enmod mpm_prefork

# Suppress ServerName FQDN warning
echo "ServerName localhost" >> /etc/apache2/apache2.conf

exec apache2-foreground
