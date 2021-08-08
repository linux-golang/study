#!/bin/bash 

docker build -t harbor.guobb.com/baseimages/nginx:18.1 .
sleep 1
docker push  harbor.guobb.com/baseimages/nginx:18.1
