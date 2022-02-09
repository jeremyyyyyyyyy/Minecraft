FROM openjdk:17

ARG RAM_AMOUNT 

ENV ram=${RAM_AMOUNT}}

WORKDIR /server

CMD echo "Docker Minercraft server is starting" && java -Xmx${ram} -jar paper-1.18.1-187.jar

