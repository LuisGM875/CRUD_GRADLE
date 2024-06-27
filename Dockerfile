# Usa una imagen base de Java
FROM eclipse-temurin:17.0.11_9-jdk
# Establece el directorio de trabajo en /app
WORKDIR /app
# Copia el archivo JAR a la imagen de Docker
COPY ./gradlew /app/
COPY ./gradle /app/gradle
COPY ./build.gradle /app/
COPY ./settings.gradle /app/

# Copia el codigo fuente dentro del contenedor
COPY ./src /app/src

# Expone el puerto en el que tu aplicación escucha
EXPOSE 8080

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]