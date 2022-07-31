FROM ssh:jdk7

MAINTAINER shang 1069199309@qq.com

ENV hadoop-version 2.6.0-cdh5.9.3

#安装hue相关依赖
RUN apt-get update -y && apt-get install -y \
    build-essential \
    libkrb5-dev \
    libmysqlclient-dev \
    libssl-dev \
    libsasl2-dev \
    libsasl2-modules-gssapi-mit \
    libsqlite3-dev \
    libtidy-0.99-0 \
    libxml2-dev \
    libxslt-dev \
    libffi-dev \
    libldap2-dev \
    libpq-dev \
    python-dev \
    python-setuptools \
    libgmp3-dev \
    libz-dev \
    software-properties-common \
    curl \
    git \
    sudo \
    maven \
    && rm -rf /var/lib/apt/lists/*

RUN useradd hue

RUN cd /opt && \
    mkdir apps datas softwares && \
    chown -R hue:hue /opt/*

#配置ssh无密钥登陆   
RUN ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa && \
    cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys && \
    chmod 0600 ~/.ssh/authorized_keys

USER hue

COPY softwares/* /opt/softwares/

RUN cd /opt/softwares/ && \
    tar zxvf hue-3.9.0-cdh5.9.3.tar.gz -C /opt/apps && \
    tar zxvf hadoop-2.6.0-cdh5.9.3.tar.gz -C /opt/apps && \
    rm -rf /opt/softwares/*
    
RUN mkdir -p /opt/apps/hadoop-2.6.0-cdh5.9.3/data/temp

RUN cd /opt/apps/hue-3.9.0-cdh5.9.3 && \
    make apps

#hue中文配置
ADD hue_conf/settings.py /opt/apps/hue-3.9.0-cdh5.9.3/desktop/core/src/desktop/

USER root

ADD libfile/* /data/

RUN chmod u+x /data/*

WORKDIR /opt/apps/

EXPOSE 8088 8888 9000 50010 50070 50075
