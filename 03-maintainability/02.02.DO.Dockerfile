# time podman build -t jc-maintain02-do -f 02.02.DO.Dockerfile ../quarkus/target

FROM openjdk:21

COPY lib/* /deployment/lib/
COPY quarkus-1.0.0-SNAPSHOT-runner.jar /deployment/app.jar

CMD ["java", "-jar", "/deployment/app.jar"]