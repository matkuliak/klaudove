#!/bin/bash

#tento script zastavi beziace containery ALE nevymaze ich 


docker stop z1_nginx_1
echo "Nginx zastaveny"
docker stop z1_web_1
echo "Web zastaveny"
docker stop z1_postgres_1
echo "Postgres zastaveny"
echo "------------"
echo "Aplikacia zastavena"