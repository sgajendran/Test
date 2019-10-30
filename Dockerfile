FROM alpine/git
WORKDIR /app
RUN git clone sgajendran@https://github.com/sgajendran/Test.git
FROM maven:3.5-jdk-8-alpine
EXPOSE 8090
RUN mvn clean package
ADD $WORKDIR/target/Test.jar Test.jar
ENTRYPOINT ["java","-jar","Test.jar"]
