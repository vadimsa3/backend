FROM gradle AS build
COPY . /home/gradle/project
WORKDIR /home/gradle/project
RUN gradle build

FROM eclipse-temurin:17
ARG JAR_FILE=build/libs/backend-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

EXPOSE 8080