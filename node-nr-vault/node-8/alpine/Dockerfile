FROM wenance/node-nr:node8.15.0-nr4.2.0-alpine-v1.1

USER root
RUN apk --no-cache add curl jq unzip bash
COPY entrypoint-vault.sh /docker-entrypoint-init.d/
RUN chmod -x /docker-entrypoint-init.d/entrypoint-vault.sh

USER appuser

ARG VAULT_URL
ENV VAULT_URL=$VAULT_URL
ARG VAULT_TOKEN
ENV VAULT_TOKEN=$VAULT_TOKEN