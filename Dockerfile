FROM gradle:7.6-jdk17 AS builder
WORKDIR /app
COPY . .
RUN chmod +x ./gradlew
RUN ./gradlew build

FROM eclipse-temurin:17
ARG JAR_FILE=/app/build/libs/backend-0.0.1-SNAPSHOT.jar
COPY --from=builder ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
EXPOSE 8080