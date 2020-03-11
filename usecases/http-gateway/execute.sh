#!/bin/bash

source ../../nginxplus/createNginxConfig.sh http
kubectl create -f ../../nginxplus/nginx-plus-http-rc.yaml
kubectl create -f ../../nginxplus/nginx-plus-svc.yaml
kubectl create -f ../../sample-apps/nginx-hello-webapp/nginx-hello-rc.yaml
kubectl create -f ../../sample-apps/nginx-hello-webapp/nginx-hello-svc.yaml
kubectl create -f ../../sample-apps/java-helloworld/java-helloworld.yaml

kubectl create -f ../../efk/fluentd/fluentd.yaml
kubectl create -f ../../efk/elastic.yaml
kubectl create -f ../../efk/kibana.yaml