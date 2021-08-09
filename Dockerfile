FROM openjdk:16-alpine3.13

COPY target/*.jar /app.jar

EXPOSE 9090

ENV PROFILE=Development JVM_ARGS=""

VOLUME /tmp /var/log/nicico /var/nicico

ENTRYPOINT java $JVM_ARGS -Djava.security.egd=file:/dev/urandom  -jar /app.jar
