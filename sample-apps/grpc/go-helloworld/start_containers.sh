#!/bin/bash

docker run --name hw1 -p 20001:50051 -d grpc-go-helloworld
docker run --name hw2 -p 20002:50051 -d grpc-go-helloworld
