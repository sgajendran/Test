FROM java:8
EXPOSE 8090
RUN mvn clean package
ADD target/Test.jar Test.jar
ENTRYPOINT ["java","-jar","Test.jar"]
