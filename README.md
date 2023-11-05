This is kubernetes education project 

To build project
* go build -o bin\app src\main.go

To run server 
* bin\app

Check server 
* curl http://localhost:8080/

To build docker 
* docker build .

To run docker image
* docker run -p 8080:8080 image-name

To add docker tag
* docker tag image-name andreas2000/app:v1.0.0

To push
* docker push andreas2000/app:v1.0.0

To create kubernetes cluster
* k3d cluster create demo

To deploy our image 
* kubectl create deploy demo --image andreas2000/app:v1.0.0

To get info 
* kubectl get po -w

To do port forwarding 
* kubectl port-forward deploy/demo 8080

To increase docker application version and push
* docker build . -t andreas2000/app:v1.0.1
* docker push andreas2000/app:v1.0.1

To deploy new version zero down time
* kubectl get deploy demo -o wide (to check that version old)
* kubectl get po -w (run in separate terminal to see statistics during deploy)
* kubectl set image deploy demo app=andreas2000/app:v1.0.1
* kubectl get deploy demo -o wide (to check that version new)
* kubectl port-forward deploy/demo 8080


