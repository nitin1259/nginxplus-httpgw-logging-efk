#!/bin/bash

eval $(minikube docker-env)
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

# path of nginx image
cd "$parent_path/nginxplus/nginxplus-img"
source create-image.sh

# path of app image
cd "$parent_path/sample-apps/java-helloworld"
source createImage.sh

cd "$parent_path/sample-apps/grpc/go-helloworld"
source build_image.sh

cd "$parent_path/efk/fluentd"
source build-image.sh
