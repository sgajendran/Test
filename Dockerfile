#FROM openjdk:8-jre-alpine
#EXPOSE 8090
#ENTRYPOINT ["java","-jar","Test.war"]
FROM java:8
EXPOSE 8090
#ADD /target/Test.jar Test.jar
ADD jenkins:/var/lib/jenkins/workspace/Pull_Build_Push/target/Test.war Test.war
ENTRYPOINT ["java","-jar","Test.war"]
