docker run -p 9991:22 -p 80:80 -v /root/docker/nginx:/ -v /etc/localtime:/etc/localtime:ro  -d -t -i jdocker/nginx:v1