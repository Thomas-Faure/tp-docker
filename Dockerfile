FROM openjdk:11
ENV dbUrl 127.0.0.1:5432/tp_devops
ENV	dbPassword tp_devops
ENV dbUser tp_devops
ADD build/libs/tp-docker-1.0.0.jar tp-docker-1.0.0.jar
EXPOSE 8080
ENTRYPOINT java -Ddatabase.url=$dbUrl -Ddatabase.username=$dbUser -Ddatabase.password=$dbPassword -jar tp-docker-1.0.0.jar