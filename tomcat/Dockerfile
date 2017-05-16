############################################
# version : jdocker/tomcat8:v1
# desc : 当前版本安装的tomcat8
############################################
# 设置继承自我们创建的 jdk8 镜像
FROM jdocker/jdk8:v1

# 下面是一些创建者的基本信息
MAINTAINER juning (691092674@qq.com)

# 设置环境变量，所有操作都是非交互式的
ENV DEBIAN_FRONTEND noninteractive

# 添加 supervisord 的配置文件，并复制配置文件到对应目录下面。（supervisord.conf文件和Dockerfile文件在同一路径）
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

#把tomcat添加到容器中
ADD apache-tomcat-8.5.14.tar.gz /usr/local/

#配置java与tomcat环境变量
ENV CATALINA_HOME /usr/local/apache-tomcat-8.5.14
ENV CATALINA_BASE /usr/local/apache-tomcat-8.5.14
ENV PATH $PATH:$CATALINA_HOME/lib:$CATALINA_HOME/bin

RUN echo "Asia/shanghai" > /etc/timezone;

# 容器需要开放Tomcat 8080端口
EXPOSE 8080

# 执行supervisord来同时执行多个命令，使用 supervisord 的可执行路径启动服务。
CMD ["/usr/bin/supervisord"]
