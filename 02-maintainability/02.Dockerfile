# docker build -t jc-maintain02 -f Dockerfile-maintain02 quarkus/target

#THIS
FROM openjdk:8

COPY lib/* /deployment/lib/
COPY quarkus-1.0.0-SNAPSHOT-runner.jar /deployment/app.jar

CMD ["java", "-jar", "/deployment/app.jar"]

#INSTEAD OF THIS
# FROM openjdk

# COPY lib/* /deployment/lib/
# COPY quarkus-1.0.0-SNAPSHOT-runner.jar /deployment/app.jar

# CMD ["java", "-jar", "/deployment/app.jar"]
