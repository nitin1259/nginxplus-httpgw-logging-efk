#!/bin/bash

docker rmi java-helloworld -f
./gradlew build 
docker build -t java-helloworld .
