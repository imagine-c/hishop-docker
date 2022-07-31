# hishop-docker

### 使用Docker一键式部署hishop项目并启动相关服务

<p align="left">
  <a target="_blank" href="https://github.com/imagine-c/hishop">
    <img src="https://img.shields.io/badge/Author-imagine-orange" ></img>
    <img src="https://img.shields.io/badge/License-MIT-green" ></img>
    <img src="https://img.shields.io/badge/Docker-20.10.x-green"></img>
    <img src="https://img.shields.io/badge/Docker Compose-1.29.x-green"></img>
    <img src="https://img.shields.io/badge/MySQL-5.7-green" ></img>
    <img src="https://img.shields.io/badge/ElasticSearch-7.12.0-green"></img>
    <img src="https://img.shields.io/badge/Kibana-7.12.0-green"></img>
    <img src="https://img.shields.io/badge/ActiveMQ-5.14.13-green"></img>
    <img src="https://img.shields.io/badge/Redis-3.2-green"></img>
    <img src="https://img.shields.io/badge/Redisinsight-2.0-green"></img>
    <img src="https://img.shields.io/badge/Nginx-1.8-green"></img>
    <img src="https://img.shields.io/badge/ZooKeeper-3.4.9-green"></img>
    <img src="https://img.shields.io/badge/Hadoop-2.6.0--cdh5.9.3-green"></img>
    <img src="https://img.shields.io/badge/HUE-3.9.0--cdh5.9.3-green"></img>
  </a>
</p>


### 前台页面为基于Vue的独立项目 请跳转至 [hishop-front](https://github.com/imagine-c/hishop-front) 项目仓库查看

### 后端项目为独立的项目，请跳转至  [hishop](https://github.com/imagine-c/hishop) 项目仓库查看

## 项目介绍

主要实现[hishop](https://github.com/imagine-c/hishop)和[hishop-front](https://github.com/imagine-c/hishop-front)的**负载均衡**，**一键式部署**，并启动Hadoop、ZooKeeper、MySQL、Redis、Nginx图片服务器、ElasticSearch、Kibana、ActiveMQ、Redis、Portainer服务。

![](https://github.com/imagine-c/hishop/raw/file/image/HDFS.png#pic_center "Hadoop")

![](https://github.com/imagine-c/hishop/raw/file/image/HUE.png#pic_center "HUE")

![](https://github.com/imagine-c/hishop/raw/file/image/nginx-image.png#pic_center "图片服务器")

## 相关技术

- [Docker](https://www.docker.com)：容器化部署
- [Docker Compose](https://docs.docker.com/compose/)：Docker容器编排
- [Dockerfile](https://docs.docker.com/engine/reference/builder/)：构建镜像的文本文件

## 准备工作

将[admin](https://github.com/imagine-c/hishop-docker/tree/master/admin)和[front](https://github.com/imagine-c/hishop-docker/tree/master/front)目录分别存储的两台主机上

每个主机安装好对应版本的Dokcker和Docker Compose

将[hishop](https://github.com/imagine-c/hishop)项目使用Maven的Lifecycle中的package进行打包，将得到的hishop-\*-0.0.1-SNAPSHOT-exec.jar复制到[admin/Web](https://github.com/imagine-c/hishop-docker/tree/master/admin/Web)和[front/Web](https://github.com/imagine-c/hishop-docker/tree/master/front/Web)目录下对应的目录中

将[hishop-front](https://github.com/imagine-c/hishop-front) 项目使用npm run build 打包生成 dist，将dist目录复制到[front/Web/nginx-front](https://github.com/imagine-c/hishop-docker/tree/master/front/Web/nginx-front)中

在[admin/Web](https://github.com/imagine-c/hishop-docker/tree/master/admin/Web)，[front/Web](https://github.com/imagine-c/hishop-docker/tree/master/front/Web)，[front/DataBaseAndHadoop](https://github.com/imagine-c/hishop-docker/tree/master/front/DataBaseAndHadoop)目录下执行命令：chmod u+x ./exec.sh

在存储[front](https://github.com/imagine-c/hishop-docker/tree/master/front)目录的主机的hosts文件中添加：172.18.0.13	hadoop

在存储[admin](https://github.com/imagine-c/hishop-docker/tree/master/admin)目录的主机的hosts文件中添加：存储[front](https://github.com/imagine-c/hishop-docker/tree/master/front)目录主机的ip地址	hadoop

## 运行

1. 在[front/DataBaseAndHadoop](https://github.com/imagine-c/hishop-docker/tree/master/front/DataBaseAndHadoop)目录下执行：./exec.sh
2. 在[admin/WebTool](https://github.com/imagine-c/hishop-docker/tree/master/admin/WebTool)目录下执行：docker-compose up -d
3. 在[admin/Web](https://github.com/imagine-c/hishop-docker/tree/master/admin/Web)目录下执行：./exec.sh
4. 在[front/Web](https://github.com/imagine-c/hishop-docker/tree/master/front/Web)目录下执行：./exec.sh

输入存储[admin](https://github.com/imagine-c/hishop-docker/tree/master/admin)目录主机的ip地址查看[hishop](https://github.com/imagine-c/hishop) 后台管理系统页面

输入存储[front](https://github.com/imagine-c/hishop-docker/tree/master/front)目录主机的ip地址查看 [hishop-front](https://github.com/imagine-c/hishop-front) 前台页面


## 开源协议

[MIT](https://mit-license.org/)
