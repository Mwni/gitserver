FROM alpine:latest

RUN apk add --no-cache git-daemon nginx fcgiwrap bash
RUN rm -rf /home /opt /mnt /media

COPY nginx.conf /etc/nginx/nginx.conf
COPY run.sh /root/run.sh

VOLUME /root/repos

EXPOSE 80

CMD ["/bin/sh", "/root/run.sh"]
