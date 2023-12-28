# time podman build -t jc-cache01-dont -f 01.01.DONT.Dockerfile ../quarkus/target

FROM debian/buildd:stable

COPY lib/* /deployment/lib/
COPY *-runner.jar /deployment/

RUN apt-get update
RUN apt -y install default-jdk ssh vim

CMD ["java", "-jar", "/deployment/quarkus-1.0.0-SNAPSHOT-runner.jar"]