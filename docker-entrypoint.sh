#!/bin/bash
set -e

# Remove ALL MPM modules at runtime, then enable only prefork
rm -f /etc/apache2/mods-enabled/mpm_*.load \
      /etc/apache2/mods-enabled/mpm_*.conf
a2enmod mpm_prefork

exec apache2-foreground
