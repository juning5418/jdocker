

#sudo docker run -d -v /home/cadmin/config/elasticsearch/config:/usr/share/elasticsearch/config -p 9200:9200 -p 9300:9300  --name=elasticsearch-test elasticsearch:latest
#sudo docker run -d -p 9200:9200 -p 9300:9300  --name=elasticsearch-test elasticsearch:latest


docker run -d --restart=always -p 9200:9200 -p 9300:9300 --name=elasticsearch-client  --memory-swappiness=1 -v /etc/localtime:/etc/localtime:ro -v /root/data/elasticsearch/config:/usr/share/elasticsearch/config -v /root/data/elasticsearch/data:/usr/share/elasticsearch/data -v /root/data/elasticsearch/logs:/usr/share/elasticsearch/logs elasticsearch:latest

docker run -d --restart=always -p 9200:9200 -p 9300:9300 --name=elasticsearch-client  --memory-swappiness=1 -v /etc/localtime:/etc/localtime:ro -v /root/data/elasticsearch/config:/usr/share/elasticsearch/config -v /root/data/elasticsearch/data:/usr/share/elasticsearch/data -v /root/data/elasticsearch/logs:/usr/share/elasticsearch/logs jdocker/elasticsearch:5.4.0



docker run -d --restart=always -p 5601:5601 --name=kibana-client  --memory-swappiness=1 -v /etc/localtime:/etc/localtime:ro -v /root/data/kibana/conf:/etc/kibana  kibana:latest

docker run -d --restart=always -p 5601:5601 --name=kibana-client -v /etc/localtime:/etc/localtime:ro -v /root/data/kibana/conf:/etc/kibana -v /root/data/kibana/config:/usr/share/kibana/config  kibana:latest