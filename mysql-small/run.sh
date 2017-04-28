#docker run -p 9992:22 -p 3307:3306 -d -t -i -v /root/docker/mysql/data:/var/lib/mysql jdocker/mysql-apt:v1
docker run -p 9992:22 -p 3307:3306  -e MYSQL_ROOT_PASSWORD=rootroot -d  -t -i -v /root/docker/mysql/data:/var/lib/mysql jdocker/mysql-small:v1

