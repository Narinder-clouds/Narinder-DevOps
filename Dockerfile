FROM ubuntu:latest
RUN apt update
RUN apt install -y apache2
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"] 

