############################################
# version : jdocker/searchhead:v1
# desc : 当前版本安装的kibana   
############################################
# 设置继承自我们创建的 jdk7 镜像
FROM jdocker/node:v1

# 下面是一些创建者的基本信息
MAINTAINER juning (691092674@qq.com)

# 设置环境变量，所有操作都是非交互式的
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get -y install git
RUN apt-get -y install npm
RUN npm install -g grunt 

# 安装supervisor工具
RUN  apt-get install -y supervisor
RUN  mkdir -p /var/log/supervisor


# 添加 supervisord 的配置文件，并复制配置文件到对应目录下面。（supervisord.conf文件和Dockerfile文件在同一路径）
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf



RUN git clone git://github.com/mobz/elasticsearch-head.git \
    && cd elasticsearch-head \
    && npm install


ENV ELASTICSEARCH_HOME /elasticsearch-head
COPY start.sh /elasticsearch-head/run.sh

EXPOSE 9100

# 执行supervisord来同时执行多个命令，使用 supervisord 的可执行路径启动服务。
CMD ["/usr/bin/supervisord"]