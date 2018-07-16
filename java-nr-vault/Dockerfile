FROM wenance/java-nr:jre8-nr4.2.0-alpine-v2.1

COPY entrypoint-vault.sh /entrypoint/
RUN chmod +x /entrypoint/entrypoint-vault.sh

ENTRYPOINT ["/entrypoint/entrypoint-vault.sh"]
