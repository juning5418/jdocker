#docker run --name memcached-wbkt  -p 40232:11211 -d -t -i "jdocker/memcached:v1"
docker run --name memcached-demo -p 9994:22 -p 11212:11211 -d -t -i "jdocker/memcached:v1"