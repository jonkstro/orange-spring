FROM openjdk:17-jdk-alpine
VOLUME /tmp
COPY target/myapp.jar myapp.jar
ENTRYPOINT ["java", "-jar", "/myapp.jar"]
