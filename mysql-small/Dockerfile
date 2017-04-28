############################################
# version : jdocker/mysql-small:v1
# desc : 当前版本安装的MySQL
############################################
# 设置继承自我们创建的 tools 镜像
FROM jdocker/tools:v1

# 下面是一些创建者的基本信息
MAINTAINER juning (691092674@qq.com)

# 设置环境变量，所有操作都是非交互式的
ENV DEBIAN_FRONTEND noninteractive

# 添加 supervisord 的配置文件，并复制配置文件到对应目录下面。（supervisord.conf文件和Dockerfile文件在同一路径）
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf


RUN apt-get -y install mysql-server
RUN /etc/init.d/mysql start \
    && mysql -uroot -e "grant all privileges on *.* to 'root'@'%' identified by 'rootroot';" \
    && mysql -uroot -e "grant all privileges on *.* to 'root'@'localhost' identified by 'rootroot';" 

#RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf \
#    && echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf \
#    && mv /tmp/my.cnf /etc/mysql/my.cnf

# VOLUME 选项是将本地的目录挂在到容器中　此处要注意：当你运行-v　＜hostdir>:<Containerdir> 时要确保目录内容相同否则会出现数据丢失
# 对应关系如下
# mysql:/docker/mysql/data
VOLUME  ["/etc/mysql", "/var/lib/mysql"]

# 容器需要开放MySQL 3306端口
EXPOSE 3306

# 执行supervisord来同时执行多个命令，使用 supervisord 的可执行路径启动服务。
CMD ["/usr/bin/supervisord"]