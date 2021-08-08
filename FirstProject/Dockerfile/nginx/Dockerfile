FROM harbor.guobb.com/baseimages/debian:10.9
LABEL author="Guobb <g632302493@163.com>"

ADD nginx-1.18.0.tar.gz /tmp

RUN apt-get update && apt-get install gcc make   libpcre3-dev  zlib1g-dev -y && cd /tmp/nginx-1.18.0 && ./configure \
    --prefix=/usr/local/nginx --user=xfsweb --group=xfsweb \
    --with-threads --with-http_realip_module --with-http_stub_status_module  && \
    make && make install && rm -rf /tmp/nginx-1.18.0  && \
    ln -sf /dev/stdout /usr/local/nginx/logs/access.log && \
    ln -sf /dev/stderr  /usr/local/nginx/logs/error.log && \
    rm -rf /var/cache/apt  && rm -rf /var/lib/apt/lists/*
ADD nginx.conf  /usr/local/nginx/conf/nginx.conf
volume ["/data","/usr/local/nginx/conf/conf.d"]
ENV PATH $PATH:/usr/local/nginx/sbin 
EXPOSE 80
ENTRYPOINT ["nginx","-g", "daemon off;"]


