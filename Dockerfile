FROM openjdk:8-jre-alpine
EXPOSE 8090
ENTRYPOINT ["java","-jar","Test.war"]
