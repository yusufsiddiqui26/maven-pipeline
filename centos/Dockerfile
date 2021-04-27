FROM centos

RUN yum -y install openssh openssh-server openssh-clients openssl-libs  passwd

RUN useradd yusuf && \
    echo "Password123" | passwd yusuf --stdin && \
    mkdir /home/yusuf/.ssh && \
    chmod 700 /home/yusuf/.ssh && \
    chown yusuf:yusuf /home/yusuf/.ssh

COPY remote_key.pub /home/yusuf/.ssh/authorized_keys

RUN chown yusuf:yusuf -R /home/yusuf/.ssh/ && \
    chmod 600 /home/yusuf/.ssh/authorized_keys

RUN /usr/bin/ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa <<<y 2>&1 >/dev/null

RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
