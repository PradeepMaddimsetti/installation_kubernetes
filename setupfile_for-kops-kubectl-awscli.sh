#! /bin/bash
# installing prereqisites
sudo apt-get update
sudo apt-get install cowsay wget unzip -y
cd /usr/bin 
# creating symbolic link for cowsay
ln -s /usr/games/cowsay
cd -
# installing required packages for k8s cluster
# kops, kubectl, and aws packages
wget -O /tmp/kops https://github.com/kubernetes/kops/releases/download/v1.22.2/kops-linux-amd64 
mv /tmp/kops /usr/local/bin/
chmod 700 /usr/local/bin/kops
kops
if [ $? == 0 ]
then 
   cowsay "kops installation is SUCCESS"
else
   cowsay "!FAIL"
fi
# installing kubectl
cd /tmp
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
mv kubectl /usr/local/bin
chmod 700 /usr/local/bin/kubectl
cd $HOME
kubectl version --client
if [ $? == 0 ]
then 
   cowsay "kubectl installation is SUCCESS"
else
   cowsay "!FAIL"
fi

# installing aws cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version
if [ $? == 0 ]
then 
   cowsay "aws installation is SUCCESS"
else
   cowsay "!FAIL"
fi

