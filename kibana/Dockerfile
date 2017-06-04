############################################
# version : jdocker/kibana:v1
# desc : 当前版本安装的kibana   
############################################
# 设置继承自我们创建的 jdk7 镜像
FROM jdocker/jdk8:v1

# 下面是一些创建者的基本信息
MAINTAINER juning (691092674@qq.com)

# 设置环境变量，所有操作都是非交互式的
ENV DEBIAN_FRONTEND noninteractive

# 添加 supervisord 的配置文件，并复制配置文件到对应目录下面。（supervisord.conf文件和Dockerfile文件在同一路径）
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# 复制 elasticsearch-1.7.2 文件到镜像中（elasticsearch-1.7.2文件夹要和Dockerfile文件在同一路径）
ADD kibana-5.4.1-linux-x86_64 /software/kibana-5.4.1-linux-x86_64

ENV KIBANA_HOME /software/kibana-5.4.0-linux-x86_64

#RUN /software/kibana-5.4.0-linux-x86_64/bin/kibana-plugin install x-pack

VOLUME  /software/kibana-5.4.0-linux-x86_64/config

EXPOSE 5601

# 执行supervisord来同时执行多个命令，使用 supervisord 的可执行路径启动服务。
CMD ["/usr/bin/supervisord"]