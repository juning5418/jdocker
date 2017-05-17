
#docker pull mysql
#docker run -d --name myMysql -v /root/data/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 -p 3306:3306 mysql


docker run --name mysql   -p 3307:3306 -d  -v /etc/localtime:/etc/localtime:ro   -v /root/data/mysql:/var/lib/mysql jdocker/mysql-small:v1



