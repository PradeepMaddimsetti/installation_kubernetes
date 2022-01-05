# Installing Minikube on Linux server
prerequsites
1) 2 CPUs or more
2) 2GB of free memory
3) 20GB of free disk space 
4) container run time (docker engine)
## installing docker 
downloding shell script and save is as .sh file
```
curl -fsSL https://get.docker.com -o get-docker.sh
```
Then execute the script
```
sudo sh get-docker.sh
```
[for troubleshoot](https://minikube.sigs.k8s.io/docs/drivers/docker/) of docker in minikube refer here 
## package installed through downloding binary file
```
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
```
