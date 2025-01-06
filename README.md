# nginxplus-httpgw-logging-efk

This is for capture the logs in nginxplus and forward it to fluentd to ES in kubernates env

### Prerequisite 

    - docker installed
    
    - minikube installed
    
    - trail or Licensed version of Nginx plus


### Start monitoring the application
    - start the minikube with command 
        ```sh
        $  minikube start --memory 8190 --cpus 4
        ```
    - Run the init.sh file
        ```sh
        $  ./init.sh
        ```
    - Go to usecases folder and run execute the execute.sh 
        ```sh
        $ ./execute
        ```
    - This will up the pods in kube cluster locally
    - Access the nginx api gateway server and hit the apps
        ```sh
        $kubectl get pods --all-namespaces
        $ kubectl get services
        $ minikube service nginxplus-svc
        ```
    - Hit the url in bowser 
        http://$(minikube ip):$(nginx service port)/
    
    - See the logs in ES


### What is for what
    - backend_http.conf - this is where you have to mentioned log format and log forwarder to fluentd
    - fluent.conf - this is where you mentioned your configuration log collection, parse and send to some data source in our case elastic.


