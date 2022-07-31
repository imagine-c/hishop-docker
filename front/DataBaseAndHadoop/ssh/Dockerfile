FROM openjdk:7-jre-jessie

MAINTAINER shang 1069199309@qq.com

#更换163安装源
RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak && \
    echo "deb http://mirrors.163.com/debian/ jessie main contrib non-free" >/etc/apt/sources.list && \
    echo "deb-src http://mirrors.163.com/debian jessie main contrib non-free" >>/etc/apt/sources.list && \
    echo "deb http://mirrors.163.com/debian-security/ jessie/updates main contrib non-free" >>/etc/apt/sources.list && \
    echo "deb-src http://mirrors.163.com/debian-security/ jessie/updates main contrib non-free" >>/etc/apt/sources.list

#安装ssh，jps相关
RUN apt-get update -y && apt-get install -y \
    openssh-client \
    openssh-server \
    openjdk-7-jdk \
    && rm -rf /var/lib/apt/lists/*
  
ADD ssh_config /etc/ssh/

ADD run.sh /data/
        
EXPOSE 22

CMD ["/bin/bash","-c","/data/run.sh"]