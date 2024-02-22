FROM openjdk:17.0.1-jdk-slim as build

WORKDIR /app

COPY build.gradle settings.gradle gradlew ./
COPY gradle ./gradle
COPY src ./src

RUN ./gradlew clean build

FROM openjdk:17.0.1-jdk-slim

RUN adduser --system --group app-user

COPY --from=build --chown=app-user:app-user /app/build/libs/calculator1-0.0.1-SNAPSHOT.jar calculator.jar

EXPOSE 8080
USER app-user
CMD ["java", "-jar", "calculator.jar"]