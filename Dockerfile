FROM openjdk:8-jre-alpine

EXPOSE 8080

WORKDIR /usr/app
COPY target/demo-*.jar /demo.jar

ENTRYPOINT ["java", "-jar", "demo.jar"]
