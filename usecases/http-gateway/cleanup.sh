#!/bin/bash

kubectl delete -f ../../nginxplus/nginx-plus-http-rc.yaml
kubectl delete -f ../../nginxplus/nginx-plus-svc.yaml
kubectl delete configmaps nginx-config
kubectl delete -f ../../sample-apps/nginx-hello-webapp/nginx-hello-rc.yaml
kubectl delete -f ../../sample-apps/nginx-hello-webapp/nginx-hello-svc.yaml
kubectl delete -f ../../sample-apps/java-helloworld/java-helloworld.yaml

kubectl delete -f ../../efk/fluentd/fluentd.yaml
kubectl delete -f ../../efk/elastic.yaml
kubectl delete -f ../../efk/kibana.yaml
