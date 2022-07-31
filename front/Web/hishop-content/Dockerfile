FROM  openjdk:8u332

MAINTAINER imagine imagine_j@163.com

COPY ./hishop-content.jar /data/

RUN chmod u+x /data/*

EXPOSE 8089 20882

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/data/hishop-content.jar"]