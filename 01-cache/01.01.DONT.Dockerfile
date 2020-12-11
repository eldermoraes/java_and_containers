# docker build -t jc-cache01-dont -f 01.01.DONT.Dockerfile ../quarkus/target

FROM debian:stretch

COPY lib/* /deployment/lib/
COPY *-runner.jar /deployment/app.jar

RUN apt-get update
RUN apt-get -y install openjdk-8-jdk ssh vim

CMD ["java", "-jar", "/deployment/app.jar"]