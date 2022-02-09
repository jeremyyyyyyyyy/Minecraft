FROM openjdk:17

WORKDIR /server

CMD echo "Docker Minercraft server is starting" && java -Xmx5G -jar paper-1.18.1-187.jar

