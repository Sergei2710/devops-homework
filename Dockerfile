FROM openjdk:1.8

EXPOSE 8080


ADD target/devops-homework.jar devops-homework.jar

ENTRYPOINT ["java", "-jar", "/devops-homework.jar"]
