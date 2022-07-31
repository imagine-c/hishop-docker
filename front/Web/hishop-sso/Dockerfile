FROM  openjdk:8u332

MAINTAINER imagine imagine_j@163.com

COPY ./hishop-sso.jar /data/

RUN chmod u+x /data/*

EXPOSE 8083 20884

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/data/hishop-sso.jar"]