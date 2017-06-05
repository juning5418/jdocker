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



# 添加 supervisord 的配置文件，并复制配置文件到对应目录下面。（supervisord.conf文件和Dockerfile文件在同一路径）
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
ENV ELASTICSEARCH_HOME /elasticsearch-head
COPY start.sh /elasticsearch-head/start.sh




RUN git clone git://github.com/mobz/elasticsearch-head.git \
    && cd elasticsearch-head \
    && npm install

EXPOSE 9100

# 执行supervisord来同时执行多个命令，使用 supervisord 的可执行路径启动服务。
CMD ["/usr/bin/supervisord"]