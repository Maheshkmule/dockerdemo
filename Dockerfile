#FROM openjdk:8
#EXPOSE 8080
#ADD target/dockerdemo.jar dockerdemo.jar
#ENTRYPOINT ["java","-jar","/dockerdemo.jar"]

# Use Maven image to build the Java application
FROM maven
WORKDIR /dockerdemo
COPY pom.xml .
COPY src src
RUN mvn package

# Use smaller JRE image for the runtime
FROM openjdk:8
WORKDIR /dockerdemo

# Copy the JAR file from the build stage
COPY --from=build /dockerdemo/target/dockerdemo.jar dockerdemo.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/dockerdemo.jar"]




