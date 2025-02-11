FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y
RUN apt install wget -y
RUN apt install php  php-mysql -y
RUN apt autoremove && apt autoclean -y
WORKDIR /var/www/html
RUN wget  https://wordpress.org/latest.tar.gz
RUN tar -xvf latest.tar.gz && mv wordpress/* . 
RUN chown www-data:www-data * && mv index.html hello
EXPOSE 80 
CMD ["apachectl","-D", "FOREGROUND"]

