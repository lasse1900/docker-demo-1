# FROM geerlingguy/php-apache:latest

# # RUN rm/var/www/html/index.html 
# COPY index.php /var/www/html/index.php

FROM php:7.2-apache
COPY index.php /var/www/html/index.php
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]