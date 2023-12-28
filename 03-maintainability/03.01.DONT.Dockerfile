# time docker build -t jc-maintain03-dont -f 03.01.DONT.Dockerfile ../quarkus/target

FROM openjdk:21

COPY lib/* /deployment/lib/
COPY quarkus-1.0.0-SNAPSHOT-runner.jar /deployment/app.jar

CMD ["java", "-jar", "/deployment/app.jar"]