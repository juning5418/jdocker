# docker run --name elasticsearch1.7.2  -v /home/cadmin/data/elasticsearch/data:/software/elasticsearch-1.7.2/data  -p 9200:9200 -p 9300:9300 -t -i -d 'jdocker/elasticsearch:v1.7.2'


#docker run -it -v /root/data:/usr/Downloads  --name dataVol ubuntu:latest /bin/bash
#docker run --name elasticsearch1.7.2  -v /root/data/elasticsearch/config:/software/elasticsearch-1.7.2/config -v /root/data/elasticsearch/data:/software/elasticsearch-1.7.2/data  -p 9200:9200 -p 9300:9300 -t -i -d 'jdocker/elasticsearch:v1.7.2'

docker run --name elasticsearch1.7.2  -v /root/data/elasticsearch/config:/software/elasticsearch-1.7.2/config -v /root/data/elasticsearch/data:/software/elasticsearch-1.7.2/data  -p 9200:9200 -p 9300:9300 -t -i -d 'jdocker/elasticsearch:v1.7.2'