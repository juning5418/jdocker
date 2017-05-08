docker run --name mysql  -p 9992:22 -p 3307:3306 -d   -v /home/cadmin/conf/mysql/my.conf:/etc/mysql/my.cnf -v /home/cadmin/data/mysql/:/var/lib/mysql jdocker/mysql-small:v1


#docker run --name mysql -v /home/cadmin/data/mysql/:/var/lib/mysql  -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -d mysql:latest

