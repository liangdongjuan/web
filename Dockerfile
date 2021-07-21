FROM openresty/openresty 
LABEL maintainer="liangdongjuan@163.com"
ADD ./cert.key /usr/local/openresty/nginx/conf
ADD ./cert.pem /usr/local/openresty/nginx/conf
ADD ./web /usr/local/openresty/nginx/html/
ADD ./default.conf /etc/nginx/conf.d/
ADD ./login.lua /usr/local/openresty/lualib
EXPOSE 80 443
