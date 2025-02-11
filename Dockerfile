FROM ubuntu
RUN apt update -y \
    && apt install apache2 wget php php-mysql -y \
    && apt autoremove -y \
    && apt autoclean -y

WORKDIR /var/www/html
RUN wget https://wordpress.org/latest.tar.gz \
    && tar -xvf latest.tar.gz && mv wordpress/* . \
    && chown www-data:www-data * \
    && mv index.html hello

EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]

