# time docker build -t jc-cache01-do -f 01.02.DO.Dockerfile ../quarkus/target

FROM debian:stretch

RUN apt-get update
RUN apt-get -y install openjdk-8-jdk ssh vim

COPY lib/* /deployment/lib/
COPY *-runner.jar /deployment/

CMD ["java", "-jar", "/deployment/quarkus-1.0.0-SNAPSHOT-runner.jar"]