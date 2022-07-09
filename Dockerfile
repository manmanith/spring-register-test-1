FROM openjdk:11
ADD ./target/*.jar /app/root.jar
ENTRYPOINT ["java", "-jar", "root.jar"]
