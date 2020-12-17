# time docker build -t jc-cache03-do -f 03.02.DO.Dockerfile ../quarkus/target

FROM debian:stretch

RUN apt-get update \
 && apt-get -y install \
    openjdk-8-jdk ssh vim

COPY lib/* /deployment/lib/
COPY quarkus-1.0.0-SNAPSHOT-runner.jar /deployment/app.jar

CMD ["java", "-jar", "/deployment/app.jar"]