FROM python:3.6-alpine3.8

RUN mkdir /docker-entrypoint-init.d
RUN pip install newrelic
COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
