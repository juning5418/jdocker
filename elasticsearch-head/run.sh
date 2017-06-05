#docker run -d --restart=always -p 9100:9100 --name=elasticsearch-head -v /etc/localtime:/etc/localtime:ro jdocker/searchhead:v1


#docker run -p 9100:9100 mobz/elasticsearch-head:5




docker run -d --restart=always -p 9100:9100 --name=elasticsearch-head -v /etc/localtime:/etc/localtime:ro jdocker/elasticsearch-head:5
