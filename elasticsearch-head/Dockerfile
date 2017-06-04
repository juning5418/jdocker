############################################
# version : jdocker/searchhead:v1
# desc : 当前版本安装的kibana   
############################################
# 设置继承自我们创建的 jdk7 镜像
FROM jdocker/jdk8:v1

# 下面是一些创建者的基本信息
MAINTAINER juning (691092674@qq.com)

# 设置环境变量，所有操作都是非交互式的
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update


RUN apt-get -y install g++ curl libssl-dev apache2-utils
RUN apt-get -y install python 
RUN apt-get -y install build-essential 
RUN apt-get -y install gcc 
RUN apt-get -y install g++
RUN apt-get -y install git
#RUN apt-get -y install nodejs
RUN apt-get -y install npm



RUN wget https://nodejs.org/dist/v6.10.3/node-v6.10.3.tar.gz


RUN tar -zxf node-v6.10.3.tar.gz \
 && cd node-v6.10.3 \
 && ./configure \
 && make \
 && make install 
 && ./configure –prefix=/usr/local/node 
 && make
 && sudo make install



# 添加 supervisord 的配置文件，并复制配置文件到对应目录下面。（supervisord.conf文件和Dockerfile文件在同一路径）
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN node -v
RUN npm -v
#RUN node install.js

RUN git clone git://github.com/mobz/elasticsearch-head.git \
    && cd elasticsearch-head \
    && npm install

EXPOSE 9100

# 执行supervisord来同时执行多个命令，使用 supervisord 的可执行路径启动服务。
CMD ["/usr/bin/supervisord"]