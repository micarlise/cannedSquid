FROM alpine

RUN apk add --no-cache \
    tini \
    squid

EXPOSE 3128/tcp

COPY entrypoint.sh /sbin/entrypoint.sh
RUN chmod 755 /sbin/entrypoint.sh

ENTRYPOINT ["/sbin/tini", "--"]

CMD ["/sbin/entrypoint.sh"]
