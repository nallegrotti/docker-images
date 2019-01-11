FROM openjdk:8-jre-alpine

ARG NRA_VERSION=4.2.0

RUN apk --no-cache add curl unzip jq bash

COPY entrypoint-vault.sh /entrypoint/
RUN chmod +x /entrypoint/entrypoint-vault.sh
RUN curl -SL http://central.maven.org/maven2/com/newrelic/agent/java/newrelic-java/$NRA_VERSION/newrelic-java-$NRA_VERSION.zip -o /tmp/nr.zip && \
 unzip /tmp/nr.zip -d /opt/ && \
 rm /tmp/nr.zip

RUN addgroup -S appgroup  && \
 adduser -S appuser -G appgroup

USER appuser

ARG NEW_RELIC_LICENSE_KEY
ENV NEW_RELIC_LICENSE_KEY=$NEW_RELIC_LICENSE_KEY
ARG NEW_RELIC_APP_NAME
ENV NEW_RELIC_APP_NAME=$NEW_RELIC_APP_NAME
ARG VAULT_URL
ENV VAULT_URL=$VAULT_URL
ARG VAULT_TOKEN
ENV VAULT_TOKEN=$VAULT_TOKEN

ENTRYPOINT ["/entrypoint/entrypoint-vault.sh"]
CMD ["java", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap", "-javaagent:/opt/newrelic/newrelic.jar", "-jar", "app.jar"]
