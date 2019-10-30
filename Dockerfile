FROM maven:3.5-jdk-8-alpine
EXPOSE 8091
RUN mvn clean package
ADD /target/Test.jar Test.jar
ENTRYPOINT ["java","-jar","Test.jar"]
