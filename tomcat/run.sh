#docker run --name tomcat-kanfang-8081  -v  /home/cadmin/file:/file -v /etc/localtime:/etc/localtime:ro -v /home/cadmin/war/kanfang:/usr/local/apache-tomcat-8.5.14/webapps/  -p 8081:8080 -d -t -i  jdocker/tomcat8:v1


docker run --name tomcat-circle-8082  -v  /home/cadmin/file:/file -v /etc/localtime:/etc/localtime:ro -v /home/cadmin/war/circle:/usr/local/apache-tomcat-8.5.14/webapps/  -p 8082:8080 -p 10287:10287 -p 10281:10281 -d -t -i  jdocker/tomcat8:v1


docker run --name tomcat-web-8081  -v  /root/file:/file -v /etc/localtime:/etc/localtime:ro -v /root/war/web:/usr/local/apache-tomcat-8.5.14/webapps/  -p 8081:8080 -d -t -i  jdocker/tomcat8:v1
docker run --name tomcat-hybs-8082  -v  /root/file:/file -v /etc/localtime:/etc/localtime:ro -v /root/war/hybs:/usr/local/apache-tomcat-8.5.14/webapps/  -p 8082:8080 -p 11181:11181 -p 11187:11187 -d -t -i  jdocker/tomcat8:v1
docker run --name tomcat-circle-8084  -v  /root/file:/file -v /etc/localtime:/etc/localtime:ro -v /root/war/circle:/usr/local/apache-tomcat-8.5.14/webapps/  -p 8084:8080 -p 10081:10081 -p 10087:10087 -d -t -i  jdocker/tomcat8:v1
docker run --name tomcat-wbkt-8083  -v  /root/file:/file -v /etc/localtime:/etc/localtime:ro -v /root/war/wbkt:/usr/local/apache-tomcat-8.5.14/webapps/  -p 8083:8080  -d -t -i  jdocker/tomcat8:v1
docker run --name tomcat-bigdate-8088  -v  /root/file:/file -v /etc/localtime:/etc/localtime:ro -v /root/war/bigdate:/usr/local/apache-tomcat-8.5.14/webapps/  -p 8088:8080  -d -t -i  jdocker/tomcat8:v1