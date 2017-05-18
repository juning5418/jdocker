############################################
# version : jdocker/memcached:v1
# desc : 当前版本安装的jdk8
############################################
# 设置继承自我们创建的 tools 镜像
FROM jdocker/tools:v1

# 下面是一些创建者的基本信息
MAINTAINER juning (691092674@qq.com)

# Install Memcached
RUN apt-get install -y memcached

# 设置环境变量，所有操作都是非交互式的
ENV DEBIAN_FRONTEND noninteractive


# 添加 supervisord 的配置文件，并复制配置文件到对应目录下面。（supervisord.conf文件和Dockerfile文件在同一路径）
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# 容器需要开放 11211端口
EXPOSE 11211

# Set the user to run Memcached daemon
USER daemon
 
# Set the entrypoint to memcached binary
ENTRYPOINT memcached

# 执行supervisord来同时执行多个命令，使用 supervisord 的可执行路径启动服务。
CMD ["/usr/bin/supervisord"]





