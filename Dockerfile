FROM eclipse-temurin:17.0.11_9-jdk

WORKDIR /root

COPY ./gradlew /root/
COPY ./gradle /root/gradle
COPY ./build.gradle /root/
COPY ./settings.gradle /root/
COPY ./build/libs/gradle-0.0.1-SNAPSHOT.jar root.jar
COPY ./src /root/src

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "root.jar"]