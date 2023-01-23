FROM alpine:latest

RUN apk add --no-cache git-daemon nginx fcgiwrap bash
RUN adduser -D -g '/var/www' www
RUN mkdir /var/www/repos
RUN chown -R www:www /run/fcgiwrap
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /var/www
RUN rm -rf /home /opt /mnt /media

COPY nginx.conf /etc/nginx/nginx.conf
COPY run.sh /root/run.sh
COPY create.sh /root/create.sh
COPY rename.sh /root/rename.sh
COPY delete.sh /root/delete.sh

VOLUME /var/www/repos

EXPOSE 80

CMD ["/bin/sh", "/root/run.sh"]
