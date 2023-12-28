# time podman build -t jc-size02-do -f 02.02.DO.Dockerfile ../quarkus/target

FROM debian/buildd:stable

RUN apt-get update && \
    apt -y install --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

COPY lib/* /deployment/lib/
COPY quarkus-1.0.0-SNAPSHOT-runner.jar /deployment/app.jar

CMD ["java", "-jar", "/deployment/app.jar"]