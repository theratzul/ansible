#!/bin/bash

sudo docker run alpine:latest

if [ $1 ];then
	i=$1
else

sudo docker images

read -p "Select docker image to run: " i

fi

echo "Docker image is: $i "

if [ $i != '' ];then
sudo docker run -it $i sh
fi

exit
