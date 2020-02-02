FROM arm32v6/python:3.8-alpine3.11

ENV CERTBOT_VERSION 1.1.0

RUN set -x && apk --no-cache add certbot>${CERTBOT_VERSION} gcc musl-dev libffi-dev libressl-dev && \
     pip3 install cryptography certbot-dns-cloudflare

VOLUME /etc/letsencrypt /var/lib/letsencrypt

EXPOSE 80 443

ENTRYPOINT [ "certbot" ]
