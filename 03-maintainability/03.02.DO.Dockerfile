# docker build -t jc-maintain03-do -f 03.02.DO.Dockerfile ../quarkus/target

FROM openjdk:8-jre-alpine

COPY lib/* /deployment/lib/
COPY quarkus-1.0.0-SNAPSHOT-runner.jar /deployment/app.jar

CMD ["java", "-jar", "/deployment/app.jar"]