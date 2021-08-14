FROM openjdk:13
EXPOSE 8888
ADD ./target/ms-config-server-0.0.1-SNAPSHOT.jar    ms-config.jar
ENTRYPOINT ["java","-jar","/ms-config.jar"]
