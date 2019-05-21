FROM nginx:1.15.12-alpine

ADD app.conf /etc/nginx/conf.d/app.template
ENV INDEX_FILE index.php
ENV PHP_UPSTREAM php-upstream:9000

CMD ["sh", "-c", "envsubst '$INDEX_FILE $PHP_UPSTREAM' < /etc/nginx/conf.d/app.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]

