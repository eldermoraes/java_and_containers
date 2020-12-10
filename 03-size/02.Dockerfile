# docker build -t jc-size02 -f Dockerfile-size02 quarkus/target

#THIS
FROM debian:stretch

RUN apt-get update \
 && apt-get -y install --no-install-recommends\
    openjdk-8-jdk \
 && rm -rf /var/lib/apt/lists/*

COPY lib/* /deployment/lib/
COPY quarkus-1.0.0-SNAPSHOT-runner.jar /deployment/app.jar

CMD ["java", "-jar", "/deployment/app.jar"]

#INSTEAD OF THIS
# FROM debian:stretch

# RUN apt-get update \
#  && apt-get -y install --no-install-recommends\
#     openjdk-8-jdk

# COPY lib/* /deployment/lib/
# COPY quarkus-1.0.0-SNAPSHOT-runner.jar /deployment/app.jar

# CMD ["java", "-jar", "/deployment/app.jar"]
