# docker build -t jc-caching02 -f Dockerfile-caching02 quarkus/target

#THIS
FROM debian:stretch

RUN apt-get update
RUN apt-get -y install openjdk-8-jdk ssh vim

COPY lib/* /deployment/lib/
COPY quarkus-1.0.0-SNAPSHOT-runner.jar /deployment/app.jar

CMD ["java", "-jar", "/deployment/app.jar"]

#INSTEAD OF THIS
# FROM debian:stretch

# RUN apt-get update
# RUN apt-get -y install openjdk-8-jdk ssh vim

# COPY lib/* /deployment/lib/
# COPY *-runner.jar /deployment/app.jar

# CMD ["java", "-jar", "/deployment/app.jar"]