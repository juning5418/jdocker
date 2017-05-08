 #sudo docker run -d -p 9200:9200 -p 9300:9300    --name=elasticsearch-test elasticsearch:latest

#/usr/share/elasticsearch/config/elasticsearch.yml

#sudo docker run -d -p 9200:9200  -v /home/cadmin/data/elasticsearch/config:/usr/share/elasticsearch/config -v /home/cadmin/data/elasticsearch/data:/usr/share/elasticsearch/data elasticsearch:latest

#sudo docker run -d -p 9201:9200  --name=elasticsearch-test9201 -v "/home/cadmin/data/elasticsearch/config":/usr/share/elasticsearch/config -v "/home/cadmin/data/elasticsearch/data":/usr/share/elasticsearch/data elasticsearch:latest


docker run --name elasticsearch-5.3.0 -d -p 9998:22 -p 9200:9200 -p 9300:9300 -t -i 'jdocker/elasticsearch:v1'