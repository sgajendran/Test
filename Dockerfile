FROM openjdk:8-jre-alpine
EXPOSE 8090
COPY /var/lib/jenkins/workspace/PullBuildAndPublish/Test.war /var/lib/docker/tmp/
WORKDIR /var/lib/docker/tmp/
ENTRYPOINT ["java","-jar","Test.war"]
