FROM nginx:1.17

LABEL maintainer="zhangqing <zhangqing332@live.com>"

ENV NGINX_VERSION 1.17

RUN  mkdir /static
RUN  mkdir /proxy

COPY nginx.conf /etc/nginx/nginx.conf
COPY nginx.vh.default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
