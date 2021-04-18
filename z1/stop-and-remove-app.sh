#!/bin/bash

#tento script zastavi beziace containery a vymaze ich 


docker stop z1_nginx_1 && docker rm -f z1_nginx_1
echo "Nginx odstraneny"
docker stop z1_web_1 && docker rm -f z1_web_1
echo "Web odstraneny"
docker stop z1_postgres_1 && docker rm -f z1_postgres_1
echo "Postgres odstraneny"
echo "------------"
echo "Aplikacia zastavena a prostredie vycistene "