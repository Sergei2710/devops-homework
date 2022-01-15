FROM openjdk:8

EXPOSE 8080

ADD target/devops-homework.jar devops-homework.jar
ADD ./log4j2-weather.yml log4j2-weather.yml
ADD ./application.properties application.properties

ENTRYPOINT ["java", "-jar", "/devops-homework.jar"]
