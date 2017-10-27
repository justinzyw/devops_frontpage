FROM nginx:1.13.5

RUN apt-get update && apt-get -y install unzip

COPY devops.zip .

RUN unzip devops.zip .

RUN cp devops/** /usr/share/nginx/html
