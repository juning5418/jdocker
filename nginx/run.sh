#docker run -p 80:80 -v /root/file:/software/file -v /root/war:/software/war -v /root/nginx/servers:/software/nginx-1.8.0/servers -v /etc/localtime:/etc/localtime:ro  -d -t -i jdocker/nginx:v1
#docker run --name nginx --restart=always -p 80:80 -v /file/file:/software/file -v /home/cadmin/war:/software/war -v /home/cadmin/nginx/servers:/software/nginx-1.8.0/servers -v /etc/localtime:/etc/localtime:ro  -d -t -i jdocker/nginx:v1
# docker run --name nginx --restart=always -p 80:80   -v /home/cadmin/logs:/software/logs -v /home/cadmin/file:/software/file -v /home/cadmin/war:/software/war -v /home/cadmin/nginx/servers:/software/nginx-1.8.0/servers -v /etc/localtime:/etc/localtime:ro   -d -t -i jdocker/nginx:v1



docker run --name nginx --restart=always -p 8891:80   -v /Users/juning/nginx/logs:/usr/local/nginx/logs -v /Users/juning/nginx/file:/software/file -v /Users/juning/nginx/war:/software/war -v /Users/juning/nginx/servers:/software/nginx-1.8.0/servers -v /etc/localtime:/etc/localtime:ro   -d -t -i jdocker/nginx:v1