FROM ubuntu:latest

RUN apt update

RUN apt install -y nginx
RUN apt install -y nano
RUN apt install -y curl

#copie des fichiers dans sites-enabled
COPY externe/wt2-6.ephec-ti.be /etc/nginx/sites-enabled/
COPY b2b/b2b.wt2-6.ephec-ti.be /etc/nginx/sites-enabled/

#copie des fichiers dans sites-available
RUN ln -s /etc/nginx/sites-available/wt2-6.ephec-ti.be /etc/nginx/sites-available/
RUN ln -s /etc/nginx/sites-available/b2b.wt2-6.ephec-ti.be /etc/nginx/sites-available/

#creation du dossier pour HTML B2B
RUN mkdir /var/www/b2b

#copie des fichiers HTML dans NGINX
COPY www/index.html /var/www/html
COPY b2b/index.html /var/www/b2b

EXPOSE 80 443