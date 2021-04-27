FROM ubuntu:latest

RUN apt update && apt install  openssh-server sudo -y

RUN useradd -rm -d /home/yusuf -s /bin/bash -g root -G sudo -u 1000 yusuf

RUN  echo 'yusuf:Password123' | chpasswd 
RUN mkdir /home/yusuf/.ssh
RUN chmod 700 /home/yusuf/.ssh
RUN chown yusuf:root /home/yusuf/.ssh

COPY remote_key.pub /home/yusuf/.ssh/authorized_keys
RUN chown yusuf:root -R /home/yusuf/.ssh/ 
RUN chmod 600 /home/yusuf/.ssh/authorized_keys
	
RUN ["/bin/bash","-c","/usr/bin/ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa <<<y 2>&1 >/dev/null"]

RUN service ssh start

EXPOSE 22

RUN apt-get update && \
    apt-get install mysql-client -y && \
    apt-get -y install python3-pip && \
    pip3 install awscli

CMD ["/usr/sbin/sshd","-D"]
