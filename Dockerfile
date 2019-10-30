FROM openjdk:8-jre-alpine
EXPOSE 8090
ADD /target/Test.jar Test.jar
ENTRYPOINT ["java","-jar","Test.jar"]
