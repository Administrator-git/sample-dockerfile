FROM jenkins/jenkins:lts-jdk11
USER root
RUN apt update && apt upgrade -y && apt install maven -y
RUN apt install openssh-server -y && apt install wget curl -y
USER jenkins
EXPOSE 8080
