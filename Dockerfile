FROM alpine:latest

ADD start.sh /start.sh

RUN apk add --no-cache samba samba-common-tools && chmod +x /start.sh

EXPOSE 139 445

CMD ["/start.sh"]
