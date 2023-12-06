#FROM openjdk:8
#EXPOSE 8080
#ADD target/dockerdemo.jar dockerdemo.jar
#ENTRYPOINT ["java","-jar","/dockerdemo.jar"]
FROM openjdk:8

WORKDIR /app

COPY build/libs/*.jar dockerdemo.jar

EXPOSE 8080

CMD ["java", "-jar", "dockerdemo.jar"]
