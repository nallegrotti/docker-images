FROM wenance/solr-nr:solr7.3.1-nr4.2.0-alpine-v1.0

USER root
RUN apk --no-cache add curl unzip jq
COPY entrypoint-vault.sh /docker-entrypoint-init.d/
RUN chmod +x /docker-entrypoint-init.d/entrypoint-vault.sh


ARG VAULT_URL
ENV VAULT_URL=$VAULT_URL
ARG VAULT_TOKEN
ENV VAULT_TOKEN=$VAULT_TOKEN

USER solr