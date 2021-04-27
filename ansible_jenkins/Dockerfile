FROM jenkins/jenkins

USER root

RUN apt-get update && \
    apt-get -y install python3-pip && \
    pip3 install ansible

USER jenkins

COPY remote_key /var/jenkins_home/ansible/remote_key
