# Start a container

## To try out manually: 
 
> docker run --rm -it --entrypoint=ash wenance/java-nr:latest 

## To run a local java application 

Step into a the path where app.jar is and execute this:

> docker run --rm -d -v $PWD:/app -w /app -e NEW_RELIC_LICESE_KEY="yourlicensekey" -e NEW_RELIC_APP_NAME=yourAppName  wenance/java-nr:latest app.jar

## To make a custom image 

Using this image as base and don't forget to define license_key and app_name env variables.

```docker

FROM wenance/java-nr:jre8-nr4.1.0-alpine-v1.1

WORKDIR /app
ADD app.jar app.jar

ENV NEW_RELIC_LICENSE_KEY yourkey
ENV NEW_RELIC_APP_NAME myCustomApplication

CMD ["/app/app.jar"]
```
