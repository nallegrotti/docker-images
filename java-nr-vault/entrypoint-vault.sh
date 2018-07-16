#!/bin/sh

if [ ! -z "${VAULT_URL}" ] && [ ! -z "${VAULT_TOKEN}" ]; then
    curl -k -s -H "X-Vault-Token:${VAULT_TOKEN}" \
        "${VAULT_URL}/${SERVICE_NAME}/${ENVIRONMENT}/envfile" \
        | jq -r ".data" | jq -r "to_entries|map(\"\(.key)=\(.value|tostring)\")|.[]" > envfile
    echo "${VAULT_URL}/${SERVICE_NAME}/${ENVIRONMENT}/envfile"
    echo `cat envfile`
    export `cat envfile`
fi

exec "$@"
