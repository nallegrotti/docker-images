# Start a container

## To try out manually: 
 
> docker build -t wenance/node-nr-vault:latest .

> docker run --rm -it wenance/node-nr-vault:latest ash

## To run a local node application 

Step into a the project path and execute this:

> docker run --rm -d -v $PWD:/app -w /app -e NEW_RELIC_LICESE_KEY="yourlicensekey" -e NEW_RELIC_APP_NAME=yourAppName -e VAULT_URL=yourSecretURL -e VAULT_TOKEN=yourVaultToken wenance/node-nr-vault:latest

## To make a custom image 

Using this image as base and don't forget to define license_key and app_name env variables.

```docker

FROM wenance/node-nr-vault:node8.15.0-nr4.2.0-alpine-v1.0

WORKDIR /app
ADD app.jar app.jar

ENV NEW_RELIC_LICENSE_KEY yourkey
ENV NEW_RELIC_APP_NAME myCustomApplication
ENV VAULT_URL yourSecretURL
ENV VAULT_TOKEN yourVaultToken
```

docker build -t wenance/node-nr-vault:node8.15.0-nr4.2.0-alpine-v1.0 .