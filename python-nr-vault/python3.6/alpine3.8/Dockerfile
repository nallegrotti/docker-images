FROM wenance/python-nr:python3.6-alpine3.8-nr3.4.0.95-v1.2

RUN apk --no-cache add jq curl
COPY entrypoint-vault.sh /docker-entrypoint-init.d
