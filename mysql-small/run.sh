

#挂载一直错误，可以先下载一个官方mysql 的docker 启动挂载。然后就好用了。我在想为啥不用官方的就得了 囧
#docker pull mysql
#docker run -d --name myMysql -v /root/data/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 -p 3306:3306 mysql

#docker run -d --name myMysql -v /home/cadmin/data/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=1qaz2wsx3edc -p 3309:3306 mysql


docker run -d --name mysql --restart=always -v /home/cadmin/mysql/data:/var/lib/mysql  -e MYSQL_ROOT_PASSWORD=1qaz2wsx3edc -p 3309:3306 mysql

docker run --name mysql --restart=always  -p 3307:3306 -d  -v /etc/localtime:/etc/localtime:ro   -v /root/data/mysql:/var/lib/mysql jdocker/mysql-small:v1



