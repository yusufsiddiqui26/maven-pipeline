FROM jenkins/jenkins

USER root

RUN apt-get update && \
    apt-get -y install python3-pip && \
    pip3 install ansible

RUN curl -fsSL https://test.docker.com -o /tmp/test-docker.sh && \
    sh /tmp/test-docker.sh && usermod -aG docker jenkins

RUN curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose

USER jenkins

COPY remote_key /var/jenkins_home/ansible/remote_key


