FROM alpine:latest

MAINTAINER mike@mikebryant.me.uk

RUN apk --no-cache add quagga

COPY init /sbin/my_init
COPY quagga /etc/quagga

VOLUME /var/run/quagga

ENTRYPOINT ["/sbin/my_init"]
