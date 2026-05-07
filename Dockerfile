# Use official PHP with Apache
FROM php:8.2-apache

# Fix MPM configuration - remove all MPM modules then enable only prefork
RUN rm -f /etc/apache2/mods-enabled/mpm_*.load \
          /etc/apache2/mods-enabled/mpm_*.conf \
    && a2enmod mpm_prefork

# Enable Apache mod_rewrite for clean URLs
RUN a2enmod rewrite

# Copy application files to Apache web root
COPY . /var/www/html/

# Set proper permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Configure Apache to allow .htaccess overrides
RUN echo '<Directory /var/www/html>\n\
    Options Indexes FollowSymLinks\n\
    AllowOverride All\n\
    Require all granted\n\
</Directory>' > /etc/apache2/conf-available/custom.conf \
    && a2enconf custom

# Expose port 80
EXPOSE 80

# Start Apache in foreground
CMD ["apache2-foreground"]
