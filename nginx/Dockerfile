############################################
# version : jdocker/nginx:v1
# desc : 当前版本安装的nginx
############################################
# 设置继承自我们创建的 tools  镜像
FROM jdocker/tools:v1-1
#FROm juning5418/tools:latest

# 下面是一些创建者的基本信息
MAINTAINER juning (691092674@qq.com)

# 设置环境变量，所有操作都是非交互式的
ENV DEBIAN_FRONTEND noninteractive

# 添加 supervisord 的配置文件，并复制配置文件到对应目录下面。（supervisord.conf文件和Dockerfile文件在同一路径）
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# 安装升级gcc
#RUN  rm -rf /var/lib/apt/lists/*
RUN  apt-get update

RUN  apt-get -y install \
build-essential

RUN  mkdir -p /software/temp
COPY nginx-http-concat-master.zip /software/temp/nginx-http-concat-master.zip

RUN unzip /software/temp/nginx-http-concat-master.zip -d  /software/temp
RUN wget http://nginx.org/download/nginx-1.8.0.tar.gz && tar -zxvf nginx-1.8.0.tar.gz -C /software/temp
RUN wget http://zlib.net/zlib-1.2.11.tar.gz && tar -zxvf zlib-1.2.11.tar.gz -C /software/temp
RUN wget http://www.openssl.org/source/openssl-1.0.1q.tar.gz && tar -zxvf openssl-1.0.1q.tar.gz -C /software/temp
RUN wget http://downloads.sourceforge.net/project/pcre/pcre/8.37/pcre-8.37.tar.gz && tar -zxvf pcre-8.37.tar.gz -C /software/temp
RUN cd /software/temp/nginx-1.8.0 &&  ./configure --sbin-path=/software/nginx-1.8.0/nginx --conf-path=/software/nginx-1.8.0/nginx.conf --pid-path=/software/nginx-1.8.0/nginx.pid --with-http_ssl_module --with-pcre=/software/temp/pcre-8.37 --with-zlib=/software/temp/zlib-1.2.11 --with-http_flv_module --with-http_mp4_module --with-openssl=/software/temp/openssl-1.0.1q --with-http_stub_status_module --add-module=/software/temp/nginx-http-concat-master &&  make &&  make install

# 设置nginx是非daemon启动
#RUN echo 'daemon off;' >> /software/nginx-1.8.0/nginx.conf
#RUN echo 'master_process off;' >> /software/nginx-1.8.0/nginx.conf
#RUN echo 'error_log  logs/error.log;' >> /software/nginx-1.8.0/nginx.conf
RUN mkdir -p /software/nginx-1.8.0/sqlfilter
RUN mkdir -p /software/nginx-1.8.0/servers
RUN mkdir -p /software/war
RUN mkdir -p /software/file
RUN mkdir -p /software/logs
COPY sql.conf /software/nginx-1.8.0/sqlfilter/sql.conf
COPY nginx.conf /software/nginx-1.8.0/nginx.conf




# 设置 NGINX 的环境变量，若读者有其他的环境变量需要设置，也可以在这里添加。
ENV NGINX_HOME /software/nginx-1.8.0/


VOLUME  /software/nginx-1.8.0/servers/
VOLUME  /software/war/
VOLUME  /software/file/
VOLUME  /software/logs/

# 容器需要开放Nginx 80端口
EXPOSE 80

# 执行run.sh文件
# CMD ["/run.sh"]
# 执行supervisord来同时执行多个命令，使用 supervisord 的可执行路径启动服务。
CMD ["/usr/bin/supervisord"]
