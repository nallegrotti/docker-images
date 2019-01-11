FROM node:8.15.0-alpine

USER root 
COPY docker-entrypoint.sh /etc/sbin/
RUN chmod +x /etc/sbin/docker-entrypoint.sh

ARG NRA_VERSION=4.2.0 
RUN apk --update add libstdc++ make gcc g++ python2
RUN cd /opt/ && \
 npm install newrelic && \
 cp node_modules/newrelic/newrelic.js .

ARG NEW_RELIC_LICENSE_KEY
ENV NEW_RELIC_LICENSE_KEY=$NEW_RELIC_LICENSE_KEY
ARG NEW_RELIC_APP_NAME
ENV NEW_RELIC_APP_NAME=$NEW_RELIC_APP_NAME

ENTRYPOINT ["/etc/sbin/docker-entrypoint.sh"]

RUN addgroup -S appgroup  && \
 adduser -S appuser -G appgroup

USER appuser
CMD ["npm", "start"]