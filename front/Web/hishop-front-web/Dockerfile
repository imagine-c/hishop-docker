FROM  openjdk:8u332

MAINTAINER imagine imagine_j@163.com

COPY ./hishop-front-web.jar /data/

RUN chmod u+x /data/*

EXPOSE 7777 20886

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/data/hishop-front-web.jar"]