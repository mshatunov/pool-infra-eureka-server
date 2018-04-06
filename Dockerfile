FROM frolvlad/alpine-oraclejdk8:slim

LABEL Description="Eureka Server" Version="0.0.1"

ARG VERSION=0.0.1

VOLUME /tmp

ADD build/libs/eureka-server-${VERSION}-SNAPSHOT.jar app.jar

RUN sh -c 'touch /app.jar'

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]