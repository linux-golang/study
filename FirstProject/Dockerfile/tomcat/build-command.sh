#!/bin/bash 

docker build -t harbor.guobb.com/baseimages/tomcat:8.5.69 .
sleep 1
docker push  harbor.guobb.com/baseimages/tomcat:8.5.69
