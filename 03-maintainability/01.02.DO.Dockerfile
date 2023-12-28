# time podman build -t jc-maintain01-do -f 01.02.DO.Dockerfile ../quarkus/target

FROM openjdk

COPY lib/* /deployment/lib/
COPY quarkus-1.0.0-SNAPSHOT-runner.jar /deployment/app.jar

CMD ["java", "-jar", "/deployment/app.jar"]