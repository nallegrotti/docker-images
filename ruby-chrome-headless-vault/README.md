# Ruby Chrome Headless with Vault
 
This image contains a Google Chrome installed with xvfb to run headlessly.

## To run a local Ruby application 

Step into a the path where yout ruby code is and execute this:

> docker run --rm -d -v $PWD:/app -w /app -e NEW_RELIC_LICENSE_KEY="yourlicensekey" -e NEW_RELIC_APP_NAME=yourAppName -e VAULT_URL=yourSecretURL -e VAULT_TOKEN=yourVaultToken wenance/ruby-chrome-headless-vault

## To make a custom image 

Using this image as base and don't forget to define license_key and app_name env variables for NewRelic Agent and VAULT_URL and VAULT_TOKEN for vault environment variables configuration.

```docker

FROM wenance/ruby-chrome-headless-vault

RUN gem install bundler

ADD . /your_app_folder
WORKDIR /your_app_folder

RUN bundle install

ENV NEW_RELIC_LICENSE_KEY yourkey
ENV NEW_RELIC_APP_NAME myCustomApplication
ENV VAULT_URL yourSecretURL
ENV VAULT_TOKEN yourVaultToken
```
v: 1.0.4
