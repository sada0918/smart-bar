FROM openjdk:21-jdk

ARG JAR

COPY $JAR /opt/app.jar

ENTRYPOINT ["java", "-jar", "/opt/app.jar"]