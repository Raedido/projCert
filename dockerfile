FROM php:7.4-apache
COPY . /var/www/html/
EXPOSE 8081
CMD ["apache2-foreground"]
RUN sed -i 's/Listen 80/Listen 8081/' /etc/apache2/ports.conf && \
    sed -i 's/:80>/:8081>/' /etc/apache2/sites-available/000-default.conf

