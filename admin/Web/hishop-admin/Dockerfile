FROM  openjdk:8u332

MAINTAINER imagine imagine_j@163.com

COPY ./hishop-admin.jar /data/

RUN chmod u+x /data/*

EXPOSE 8090 20881

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/data/hishop-admin.jar"]