#!/bin/bash 

docker build -t harbor.guobb.com/baseimages/debian:10.9 .
sleep 1
docker push harbor.guobb.com/baseimages/debian:10.9
