FROM nginx:1.13.5

RUN apt-get update && apt-get -y install unzip

COPY frontpage.zip .

RUN mkdir frontpage

RUN unzip frontpage.zip -d frontpage/

RUN cp frontpage/** /usr/share/nginx/html
