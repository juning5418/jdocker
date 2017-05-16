#docker run --name mysql  -p 9992:22 -p 3307:3306 -d  -v /etc/localtime:/etc/localtime:ro   -v /home/cadmin/data/mysql/:/var/lib/mysql jdocker/mysql-small:v1
#docker run --name mysql  -p 9992:22 -p 3307:3306 -d   -v /home/cadmin/conf/mysql/my.conf:/etc/mysql/my.cnf -v /home/cadmin/data/mysql/:/var/lib/mysql jdocker/mysql-small:v1

#docker run --name mysql   -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -d jdocker/mysql-small:v1

#docker run --name mysql -v /home/cadmin/data/mysql/:/var/lib/mysql  -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -d mysql:latest


docker run --name mysql   -v /etc/localtime:/etc/localtime:ro   -v /root/data/mysql:/var/lib/mysql  -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -d mysql:latest

#docker run --name mysql   -p 3307:3306 -d  -v /etc/localtime:/etc/localtime:ro   -v /root/data/mysql:/var/lib/mysql jdocker/mysql-small:v1


#docker run -p 3306:3306 --name mysql -v /etc/localtime:/etc/localtime:ro -v $PWD/conf/my.cnf:/etc/mysql/my.cnf -v $PWD/logs:/logs -v $PWD/data:/mysql_data -e MYSQL_ROOT_PASSWORD=1qaz2wsx3edc -d mysql:5.6


