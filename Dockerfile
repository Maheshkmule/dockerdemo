#FROM openjdk:8
#EXPOSE 8080
#ADD target/dockerdemo.jar dockerdemo.jar
#ENTRYPOINT ["java","-jar","/dockerdemo.jar"]

FROM openjdk:8
EXPOSE 8080
ADD .maven/maven-wrapper.jar maven-wrapper.jar
ENTRYPOINT ["java","-jar","/maven-wrapper.jar"]


