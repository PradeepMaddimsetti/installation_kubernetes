#! /bin/bash
os=`awk -F \" '/^NAME/ {print $2}' /etc/os-release` 
# installing cowsay
sudo apt-get update -y
sudo apt-get install -y cowsay wget
cowsay 'successfully installed cowsay '
cowsaypath=`readlink -f $(which cowsay)`
sudo ln -s $cowsaypath /usr/bin/
echo $os | cowsay
uname -a | cowsay -n
# installing kops 
wget https://github.com/kubernetes/kops/releases/download/v1.22.2/kops-linux-amd64
sudo chmod 700 kops-linux-arm64
sudo mv kops-linux-arm64 kops
sudo mv kops /usr/local/bin
kops version
test=`echo $?`
if [ $test -eq '0' ]
then
    cowsay 'kops installed successfully'
else
    cowsay 'kops installing failed'
fi
# installing kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo chmod 700 kubectl
sudo mv kubectl /usr/local/bin
kubectl version --client
test=`echo $?`
if [ $test -eq '0' ]
then
    cowsay 'kubectl installed successfully'
else
    cowsay 'kubectl installing failed'
fi
# installing aws cli
sudo apt-get update && sudo apt-get install unzip -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version
test=`echo $?`
if [ $test -eq '0' ]
then
    cowsay 'aws cli installed successfully'
else
    cowsay 'aws cli installing failed'
fi


