# Start a container

## To try out manually: 

> docker build -t wenance/node-nr:latest .

> docker run --rm -it wenance/node-nr:latest ash

## To run a local java application 

Step into a the project path and execute this:

> docker run --rm -d -v $PWD:/app -w /app -e NEW_RELIC_LICESE_KEY="yourlicensekey" -e NEW_RELIC_APP_NAME=yourAppName  wenance/node-nr:latest

## To make a custom image 

Using this image as base and don't forget to define license_key and app_name env variables.

```docker

FROM wenance/node-nr:node8.15.0-nr4.2.0-alpine-v1.0

ENV NEW_RELIC_LICENSE_KEY yourkey
ENV NEW_RELIC_APP_NAME myCustomApplication
```

> docker build -t wenance/node-nr:node8.15.0-nr4.2.0-alpine-v1.0 .
