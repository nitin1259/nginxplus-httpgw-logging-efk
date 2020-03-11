kubectl create -f efk/elastic.yaml -n kube-system
kubectl create -f efk/kibana.yaml -n kube-system

kubectl create -f efk/fluentd-rbac.yaml
kubectl create -f efk/fluentd-daemonset.yaml

docker build -t fluentd-node-sample:latest -f sample-app/Dockerfile sample-app
kubectl create -f efk/node-deployment.yaml