FROM  openjdk:8u332

MAINTAINER imagine imagine_j@163.com

COPY ./hishop-search.jar /data/

RUN chmod u+x /data/*

EXPOSE 8082 20883

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/data/hishop-search.jar"]