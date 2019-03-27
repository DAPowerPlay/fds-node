FROM nginx:alpine


WORKDIR "/root"

RUN rm -rf /etc/nginx/conf.d/default.conf
RUN rm -rf /etc/nginx/sites-enabled/default

RUN rm -rf /etc/letsencrypt/*

COPY ./conf/default.conf /etc/nginx/conf.d/default.conf
COPY ./conf/default.conf /etc/nginx/sites-enabled/default
ADD ./certbot /etc/letsencrypt/
ADD ./start-nginx.sh  ./start-nginx.sh

EXPOSE 80 443
CMD exec ./start-nginx.sh


