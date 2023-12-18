# creates a layer from the openjdk:17-alpine Docker image.
FROM openjdk:17-alpine

MAINTAINER boottechnologies@gmail.com

# cd /app
WORKDIR /app

# Refer to Maven build -> finalName
ARG JAR_FILE=target/spring-boot-ostara-demo-*.jar

# cp target/spring-boot-ostara-demo-0.0.1-SNAPSHOT.jar /app/spring-boot-ostara-demo.jar
COPY ${JAR_FILE} spring-boot-ostara-demo.jar

# java -jar /app/spring-boot-ostara-demo.jar
CMD ["java", "-jar", "-Xmx1024M", "/app/spring-boot-ostara-demo.jar"]

# Make port 8099 available to the world outside this container
EXPOSE 8099
