FROM openjdk:17-oracle
VOLUME /tmp
COPY target/myapp.jar myapp.jar
# Rodar a aplicação na porta 8080
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/myapp.jar"]
