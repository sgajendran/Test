#FROM openjdk:8-jre-alpine
#EXPOSE 8090
#ENTRYPOINT ["java","-jar","Test.war"]
FROM java:8
EXPOSE 8090
#ADD /target/Test.jar Test.jar
ENTRYPOINT ["java","-jar","Test.jar"]
