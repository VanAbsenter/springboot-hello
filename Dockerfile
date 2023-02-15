FROM maven:3.8.4-openjdk-17 as maven-builder
COPY src /app/src
COPY pom.xml /app

RUN mvn -f /app/pom.xml clean package -DskipTests
FROM openjdk:17-alpine

WORKDIR /app-service

EXPOSE 9000
ENTRYPOINT ["java","-jar","/data/springboot-hello-world.jar"]
