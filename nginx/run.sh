docker run -p 80:80 -v /root/nginx/servers:/software/nginx-1.8.0/servers -v /etc/localtime:/etc/localtime:ro  -d -t -i jdocker/nginx:v1