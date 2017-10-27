FROM nginx:1.13.5

RUN apt-get -y install unzip

COPY devops.zip 

RUN unzip devops.zip -d /usr/share/nginx/html
