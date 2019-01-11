FROM ruby:2.4.4
RUN apt-get update
RUN apt-get install -y 	apt-transport-https
RUN apt-get install libmagickwand-dev

COPY entrypoint-vault.sh /entrypoint/
RUN chmod +x /entrypoint/entrypoint-vault.sh

# Chrome.
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - 
RUN sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
RUN apt-get update
RUN apt-get install -y google-chrome-stable

# headless
RUN apt-get install -y xvfb

RUN apt-get install -y jq


RUN addgroup appgroup  && \
 adduser --ingroup appgroup appuser

USER appuser

ARG VAULT_URL
ENV VAULT_URL=$VAULT_URL
ARG VAULT_TOKEN
ENV VAULT_TOKEN=$VAULT_TOKEN

ENTRYPOINT ["/entrypoint/entrypoint-vault.sh"]