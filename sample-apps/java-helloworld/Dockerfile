FROM openjdk:8-jdk-alpine
ARG JAR_FILE=build/libs/java-helloworld-0.1.0.jar
COPY ${JAR_FILE} java-helloworld.jar
ENTRYPOINT ["java","-jar","/java-helloworld.jar"]
EXPOSE 8080 
