# docker run --name elasticsearch1.7.2  -v /home/cadmin/data/elasticsearch/data:/software/elasticsearch-1.7.2/data  -p 9200:9200 -p 9300:9300 -t -i -d 'jdocker/elasticsearch:v1.7.2'
docker run --name elasticsearch1.7.2  -v /root/data/elasticsearch/data:/software/elasticsearch-1.7.2/data  -p 9200:9200 -p 9300:9300 -t -i -d 'jdocker/elasticsearch:v1.7.2'