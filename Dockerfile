
FROM maven:3.5.2-jdk-8-alpine AS MAVEN_TOOL_CHAIN
EXPOSE 8090
WORKDIR /var/lib/jenkins/workspace/PullBuildAndPublish
RUN mvn clean package
ADD target/Test.jar Test.jar
ENTRYPOINT ["java","-jar","Test.jar"]
