FROM traefik:v2.11

RUN apk add --no-cache gettext

COPY ./template/dynamic /etc/traefik/template/dynamic
COPY ./entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["sh", "entrypoint.sh"]