############################################
# version : jdocker/jdk8:v1
# desc : 当前版本安装的jdk8
############################################
# 设置继承自我们创建的 tools 镜像
FROM jdocker/tools:v1

# 下面是一些创建者的基本信息
MAINTAINER juning (691092674@qq.com)

# 设置环境变量，所有操作都是非交互式的
ENV DEBIAN_FRONTEND noninteractive

# 添加 supervisord 的配置文件，并复制配置文件到对应目录下面。（supervisord.conf文件和Dockerfile文件在同一路径）
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

#把java与tomcat添加到容器中
ADD jdk-8u131-linux-x64.tar.gz /usr/local/

#配置java与tomcat环境变量
ENV JAVA_HOME /usr/local/jdk1.8.0_131
ENV CLASSPATH $JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
ENV PATH $PATH:$JAVA_HOME/bin:


# 执行supervisord来同时执行多个命令，使用 supervisord 的可执行路径启动服务。
CMD ["/usr/bin/supervisord"]
