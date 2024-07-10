FROM openjdk:17
WORKDIR /app
COPY ./target/springjenkins-0.0.1-SNAPSHOT.jar /app
EXPOSE 8081
CMD ["java", "-jar", "springjenkins-0.0.1-SNAPSHOT.jar"]