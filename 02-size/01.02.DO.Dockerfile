# time podman build -t jc-size01-do -f 01.02.DO.Dockerfile ../quarkus/target

FROM debian/buildd:stable

RUN apt-get update && \
    apt -y install --no-install-recommends default-jdk ssh vim

COPY lib/* /deployment/lib/
COPY quarkus-1.0.0-SNAPSHOT-runner.jar /deployment/app.jar

CMD ["java", "-jar", "/deployment/app.jar"]