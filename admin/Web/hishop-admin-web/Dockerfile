FROM  openjdk:8u332

MAINTAINER imagine imagine_j@163.com

COPY ./hishop-admin-web.jar /data/

RUN chmod u+x /data/*

EXPOSE 8091 20885

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/data/hishop-admin-web.jar"]