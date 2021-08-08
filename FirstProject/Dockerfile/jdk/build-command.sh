#!/bin/bash 

docker build -t harbor.guobb.com/baseimages/jdk:1.8.301 .
sleep 1
docker push  harbor.guobb.com/baseimages/jdk:1.8.301
