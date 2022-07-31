FROM centos:7

MAINTAINER shang 1069199309@qq.com

#安装nginx

COPY nginx-1.8.0.tar.gz /data/

RUN cd /data/ && \
		tar -zxvf nginx-1.8.0.tar.gz -C /opt/

RUN mv /opt/nginx-1.8.0 /opt/nginx

WORKDIR /opt/nginx

#编译安装nginx
RUN yum install -y gcc make pcre-devel zlib-devel

RUN ./configure   --prefix=/usr/local/nginx --with-http_stub_status_module --with-pcre && make && make install

#启动Nginx服务
#RUN /usr/local/nginx/sbin/nginx
#add 代理和负载均衡

COPY nginx-conf/nginx.conf /usr/local/nginx/conf/


EXPOSE 80

#设置生成容器时需要执行的脚本
CMD ["/usr/local/nginx/sbin/nginx","-g","daemon off;"]
