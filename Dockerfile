FROM openjdk:8
###################### FOR JAVA #######################
EXPOSE 8080

ADD target/devops-homework.jar devops-homework.jar
ADD ./log4j2-weather.yml log4j2-weather.yml
ADD ./application.properties application.properties
##################### END FOR JAVA ####################
#######################################################
###################### FOR CRON #######################
RUN apt-get update && apt-get -y install cron
RUN mkdir monitor_scripts

COPY ./env-cron /etc/cron.d/env-cron
COPY ./env_monitor.sh monitor_scripts/env_monitor.sh
RUN chmod u+x monitor_scripts/env_monitor.sh
RUN chmod u+x /etc/cron.d/env-cron
RUN crontab /etc/cron.d/env-cron
ENV MY_TEST_ENV_VAR=Present

#Define printenv, cron service and java app
COPY ./init.sh init.sh
RUN chmod u+x init.sh

##################### END FOR CRON ####################

ENTRYPOINT [ "bash", "init.sh" ]

ENTRYPOINT ["java", "-jar", "/devops-homework.jar"]
