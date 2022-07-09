FROM openjdk:11
ADD ./target/registration-1.0.jar /app/root.jar
WORKDIR /app
ENTRYPOINT ["java", "-jar", "root.jar"]
