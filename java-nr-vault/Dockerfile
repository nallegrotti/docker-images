FROM openjdk:8-jre-alpine

ARG NRA_VERSION=4.2.0 

COPY entrypoint-vault.sh /entrypoint/
RUN chmod +x /entrypoint/entrypoint-vault.sh
RUN apk --update add curl unzip jq
RUN curl -SL http://central.maven.org/maven2/com/newrelic/agent/java/newrelic-java/$NRA_VERSION/newrelic-java-$NRA_VERSION.zip -o /tmp/nr.zip && \
 unzip /tmp/nr.zip -d /opt/ && \
 rm /tmp/nr.zip

ARG NEW_RELIC_LICENSE_KEY
ENV NEW_RELIC_LICENSE_KEY=$NEW_RELIC_LICENSE_KEY
ARG NEW_RELIC_APP_NAME
ENV NEW_RELIC_APP_NAME=$NEW_RELIC_APP_NAME

ENTRYPOINT ["/entrypoint/entrypoint-vault.sh"]
CMD ["java", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap", "-javaagent:/opt/newrelic/newrelic.jar", "-jar", "app.jar"] 
