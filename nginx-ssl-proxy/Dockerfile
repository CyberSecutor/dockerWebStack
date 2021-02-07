FROM nginx:alpine

ENV PROXY_HOST=worker
ENV PROXY_PORT=9000

COPY nginx /etc/nginx

WORKDIR /var/www/html

EXPOSE 443
EXPOSE 80

CMD ["/bin/sh", "-c", "export DOLLAR='$' && envsubst < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]
