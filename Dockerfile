
FROM maven:3.5-jdk-8-alpine
EXPOSE 8090
WORKDIR /var/lib/jenkins/workspace/PullBuildAndPublish
RUN mvn clean package
ADD $WORKDIR/target/Test.jar Test.jar
ENTRYPOINT ["java","-jar","Test.jar"]
