#!/bin/bash

#tento script pripravi a spusti vsetko, po jeho ukonceni je aplikacia beziaca a funkcna

echo "Starting setup" 

docker-machine create -d virtualbox dev;
docker-compose up --build -d
docker-compose run web /usr/local/bin/python create_db.py


echo "Setup and install finished"
echo "Looking for web app IP"
echo "-" 
echo "--" 
echo "---" 
echo "----" 
echo "-----" 
echo "------" 
echo "-------" 
echo "--------" 
echo "---------" 
echo "----------" 
echo "-----------" 
echo "------------" 
echo "Go to port 8000 of this address:"

docker inspect z1_web_1 | grep "IPAddress"
