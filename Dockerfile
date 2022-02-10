FROM ubuntu:18.04


ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

RUN sed 's/main$/main universe/' -i /etc/apt/sources.list



ENV DEBIAN_FRONTEND noninteractive



RUN apt-get update

RUN apt-get update && \

    apt-get install -y openjdk-8-jdk && \

    apt-get install -y ant && \

    apt-get clean;

ENTRYPOINT ["somescript.sh"]*

ARG RAM_AMOUNT 

ENV ram=${RAM_AMOUNT}}

WORKDIR /server

CMD echo "Docker Minercraft server is starting" && java -Xmx${ram} -jar paper-1.18.1-187.jar

