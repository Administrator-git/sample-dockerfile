FROM jenkins/jenkins:latest
USER root
RUN apt update && apt upgrade -y 
RUN apt install git -y && apt install maven -y
RUN apt install openssh-server -y && apt install wget curl -y
USER jenkins
EXPOSE 8080
