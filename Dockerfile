FROM maven:3.8.4-openjdk-17 as maven-builder
COPY src /app/src
COPY pom.xml /app

RUN mvn packages
FROM eclipse-temurin:latest

WORKDIR /app-service

EXPOSE 9000
CMD ["java","-jar","/data/springboot-hello-world.jar"]
