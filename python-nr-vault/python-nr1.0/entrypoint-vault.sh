#!/bin/sh

if [ ! -z "${VAULT_URL}" ] && [ ! -z "${VAULT_TOKEN}" ]
then
    export `curl -k -s -H "X-Vault-Token:${VAULT_TOKEN}" "${VAULT_URL}" \
        | jq -r ".data" | jq -r 'to_entries|map("\(.key)=\(.value)")|.[]'`
fi
