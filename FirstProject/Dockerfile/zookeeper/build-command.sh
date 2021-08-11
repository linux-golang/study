#!/bin/bash
TAG=$1
docker build -t harbor.guobb.com/project-xfs/zookeeper:${TAG} .
sleep 1
docker push   harbor.guobb.com/project-xfs/zookeeper:${TAG}
