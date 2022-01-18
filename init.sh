#Copy ENV vars to /etc/environment for cron usage
printenv >> /etc/environment

#Start cron service
service cron start

#Run java application
java -jar /devops-homework.jar
