############################################
# version : jdocker/spark:v1
# desc : 当前版本安装的spark
############################################
FROM ubuntu:16.04


# 下面是一些创建者的基本信息
MAINTAINER juning (691092674@qq.com)

# 设置环境变量，所有操作都是非交互式的
ENV DEBIAN_FRONTEND noninteractive


# 清空ubuntu更新包
RUN  rm -rf /var/lib/apt/lists/*


RUN  apt-get update
RUN  apt-get install -y vim wget curl ssh


# 安装supervisor工具
RUN  apt-get install -y supervisor
RUN  mkdir -p /var/log/supervisor

# 添加 supervisord 的配置文件，并复制配置文件到对应目录下面。（supervisord.conf文件和Dockerfile文件在同一路径）
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf


#把java添加到容器中
ADD jdk-8u131-linux-x64.tar.gz /usr/local/


RUN echo "Asia/shanghai" > /etc/timezone;


#配置java与tomcat环境变量
ENV JAVA_HOME /usr/local/jdk1.8.0_131
ENV CLASSPATH $JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
ENV PATH $PATH:$JAVA_HOME/bin:


#私钥（~/.ssh/id_rsa）由客户端持有
#公钥（~/.ssh/id_rsa.pub）交给服务端
#已认证的公钥（~/.ssh/authorized_keys）由服务端持有，只有已认证公钥的客户端才能连接至服务端
#参数：
#t：加密方式
#P：密码    
RUN ssh-keygen -t rsa -P ""
RUN cat /.ssh/id_rsa.pub >> /.ssh/authorized_keys


# 执行supervisord来同时执行多个命令，使用 supervisord 的可执行路径启动服务。
CMD ["/usr/bin/supervisord"]
