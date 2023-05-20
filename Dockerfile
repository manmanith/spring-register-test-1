FROM openjdk:11
ADD ./target/registration-1.0.jar /ROOT.jar
ENTRYPOINT ["java", "-jar", "ROOT.jar"]
