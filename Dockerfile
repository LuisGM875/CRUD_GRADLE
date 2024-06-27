# Usa una imagen base de Java
FROM eclipse-temurin:17.0.11_9-jdk as builder

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo JAR a la imagen de Docker
COPY ./gradlew /app/
COPY ./gradle /app/gradle
COPY ./build.gradle /app/
COPY ./settings.gradle /app/
COPY ./build/libs/gradle-0.0.1-SNAPSHOT.jar app.jar

# Copia el codigo fuente dentro del contenedor
COPY ./src /app/src

# Expone el puerto en el que tu aplicación escucha
EXPOSE 8080

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar"]
CMD ["app.jar"]