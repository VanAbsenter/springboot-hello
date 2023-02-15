FROM maven:3.8.3-jdk-11-slim AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src/ /app/src/
RUN mvn package


FROM openjdk:11-jre-slim
WORKDIR /app
EXPOSE 9000
CMD ["java", "jar", "app.jar"]
