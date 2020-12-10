# docker build -t jc-caching01 -f Dockerfile-caching01 quarkus/target

#THIS
FROM debian:stretch

RUN apt-get update
RUN apt-get -y install openjdk-8-jdk ssh vim

COPY lib/* /deployment/lib/
COPY *-runner.jar /deployment/app.jar

CMD ["java", "-jar", "/deployment/app.jar"]

#INSTEAD OF THIS
FROM debian:stretch

COPY lib/* /deployment/lib/
COPY *-runner.jar /deployment/app.jar

RUN apt-get update
RUN apt-get -y install openjdk-8-jdk ssh vim

CMD ["java", "-jar", "/deployment/app.jar"]