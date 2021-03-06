#docker run --name tomcat-kanfang-8081  -v  /home/cadmin/file:/file -v /etc/localtime:/etc/localtime:ro -v /home/cadmin/war/kanfang:/usr/local/apache-tomcat-8.5.14/webapps/  -p 8081:8080 -d -t -i  jdocker/tomcat8:v1
docker run --name tomcat-hybs-01-8082  -v  /root/file:/file -v /etc/localtime:/etc/localtime:ro -v /root/war/hybs:/usr/local/apache-tomcat-8.5.14/webapps/  -p 8082:8080 -p 11181:11181 -p 11187:11187 -d -t -i  jdocker/tomcat8:v1-1;
docker run --name tomcat-circle-01-8084  -v  /root/file:/file -v /etc/localtime:/etc/localtime:ro -v /root/war/circle:/usr/local/apache-tomcat-8.5.14/webapps/  -p 8084:8080 -p 10081:10081 -p 10087:10087 -d -t -i  jdocker/tomcat8:v1-1;
docker run --name tomcat-wbk2-01-8083  -v  /root/file:/file -v /etc/localtime:/etc/localtime:ro -v /root/war/wbkt:/usr/local/apache-tomcat-8.5.14/webapps/  -p 8083:8080  -d -t -i  jdocker/tomcat8:v1-1;
docker run --name tomcat-gxyq-01-8085  -v  /root/file:/file -v /etc/localtime:/etc/localtime:ro -v /root/war/gxyq:/usr/local/apache-tomcat-8.5.14/webapps/  -p 8085:8080  -p 10287:10287 -p 10281:10281 -d -t -i  jdocker/tomcat8:v1-1;
docker run --name tomcat-fhjy-01-8086  -v  /root/file:/file -v /etc/localtime:/etc/localtime:ro -v /root/war/fhjy:/usr/local/apache-tomcat-8.5.14/webapps/  -p 8086:8080  -p 10387:10387 -p 10381:10381 -d -t -i  jdocker/tomcat8:v1-1;
docker run --name tomcat-kanfang-01-8087  -v  /root/file:/file -v /etc/localtime:/etc/localtime:ro -v /root/war/kanfang:/usr/local/apache-tomcat-8.5.14/webapps/  -p 8087:8080  -d -t -i  jdocker/tomcat8:v1-1;

docker run --name tomcat-em-8083  -v  /root/file:/file -v /etc/localtime:/etc/localtime:ro -v /root/war/em:/usr/local/apache-tomcat-8.5.14/webapps/  -p 8083:8080 -p 10081:10081 -p 10087:10087 -d -t -i  jdocker/tomcat8:v1-1;



docker run --name tomcat-ketang-8091  -v  /file/file:/file -v /etc/localtime:/etc/localtime:ro -v /home/cadmin/war/ketang:/usr/local/apache-tomcat-8.5.14/webapps/  -p 8091:8080  -d -t -i  jdocker/tomcat8:v1-1;

docker run --name tomcat-hybs-8090  -v  /file/file:/file -v /etc/localtime:/etc/localtime:ro -v /home/cadmin/war/hybs:/usr/local/apache-tomcat-8.5.14/webapps/  -p 8090:8080 -p 11181:11181 -p 11187:11187 -d -t -i  jdocker/tomcat8:v1-1;

docker run --name tomcat-circle-8084  -v  /file/file:/file -v /etc/localtime:/etc/localtime:ro -v /home/cadmin/war/circle:/usr/local/apache-tomcat-8.5.14/webapps/  -p 8084:8080 -p 10081:10081 -p 10087:10087 -d -t -i  jdocker/tomcat8:v1-1;
docker run --name tomcat-em-8083  -v  /file/file:/file -v /etc/localtime:/etc/localtime:ro -v /home/cadmin/war/em:/usr/local/apache-tomcat-8.5.14/webapps/  -p 8083:8080 -p 10091:10091 -p 10097:10097 -d -t -i  jdocker/tomcat8:v1-1;




docker run --name activemq -p 61616:61616 -e ACTIVEMQ_ADMIN_LOGIN=admin -e ACTIVEMQ_ADMIN_PASSWORD=admin --restart=always -d registry.aliyuncs.com/daydayup/activemq

