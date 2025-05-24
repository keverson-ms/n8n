#!/bin/sh
set -e

N8N_HOST=$(echo "$N8N_HOST" | awk -F[/:] '{print $4}')

CERT_FILE="certs/${N8N_HOST}.pem"
KEY_FILE="certs/${N8N_HOST}-key.pem"

export CERT_FILE KEY_FILE
# Gere o arquivo dinâmico com as variáveis substituídas
envsubst '$CERT_FILE $KEY_FILE' \
    </etc/traefik/template/dynamic >/etc/traefik/dynamic/dynamic.yml

exec traefik "$@"