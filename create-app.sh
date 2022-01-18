#!/bin/sh
docker pull 22101989/devops-homework
docker run -p 8080:8080 22101989 --memory="1g" /devops-homework
