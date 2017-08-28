docker run --name mysql  -p 3307:3306 -d  -v /root/docker/mysql/data/:/var/lib/mysql jdocker/mysql-small:v1

docker run --name mysql   -p 3306:3306  -e MYSQL_ROOT_PASSWORD=123456 -d jdocker/mysql-small:v1


docker run --name mysql --restart=always  -p 3307:3306 -d  -v /etc/localtime:/etc/localtime:ro   -v /home/cadmin/data/mysql:/var/lib/mysql jdocker/mysql-small:v1




docker run --name mysql -p 3309:3306 -v /etc/localtime:/etc/localtime:ro -v /home/cadmin/mysql/data:/var/lib/mysql -v /home/cadmin/mysql/conf:/etc/mysql/conf.d -d mysql