FROM java:8
EXPOSE 8090
ADD ../../../../../var/lib/jenkins/workspace/PullBuildAndPublish/target/Test.jar Test.jar
ENTRYPOINT ["java","-jar","Test.jar"]
