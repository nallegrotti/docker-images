FROM python:3.6-alpine3.8

RUN mkdir /docker-entrypoint-init.d
RUN pip install newrelic==3.4.0.95
COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
