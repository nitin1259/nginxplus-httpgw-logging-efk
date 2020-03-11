#!/bin/bash
config=$1
echo $(pwd)

kubectl create configmap nginx-config --from-file=./../../nginxplus/conf.d/backend_$config.conf
