# time podman build -t jc-maintain02-dont -f 02.01.DONT.Dockerfile ../quarkus/target

FROM openjdk

COPY lib/* /deployment/lib/
COPY quarkus-1.0.0-SNAPSHOT-runner.jar /deployment/app.jar

CMD ["java", "-jar", "/deployment/app.jar"]
