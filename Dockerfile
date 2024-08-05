# Usar uma imagem base do OpenJDK
# FROM openjdk:17-jdk-slim
# Usar uma imagem própria para a OrangePI (ARM32-V7)
FROM arm32v7/eclipse-temurin:17-jammy

# Definir o diretório de trabalho dentro do container
WORKDIR /app

# Copiar o arquivo JAR do projeto para o diretório de trabalho
COPY target/orange-0.0.1-SNAPSHOT.jar app.jar

# Expôr a porta que a aplicação irá rodar
EXPOSE 8080

# Comando para rodar a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]
