# Installing kubernetes cluster 
## using kops tool
it is an automation provisioning tool
### Prereqisetes:
1. DOMAIN NAME
2. Route 53 Domain integration
3. AWS ACCOUNT
4. S3 BUCKET
5. KOPS Binary
6. SSH Public & Pivate keys
7. Management Server - t2.micro machine
---
we are creating the cluster environment as
* one Master
* two worker Nodes
---
# set up the DNS Service
configure the route 53 in aws
create a hosted zone in aws 
we get ns and soa record
these ns records are integrated to your domain name on godaddy
![aws ns names](Capture1.PNG)
Then login to godady
click managedns on your domain name
chenge the name servers on goddady replaced with aws ns names
![ns names interchanging ](Capture2.PNG)
ns names integrated on godaddy

---
# know creating s3 bucket 
we have to create s3 bucket in aws
![s3 bucket](Capture3.PNG)
# Create management or gem server for KOPS
here management server is created on aws
speifications
t2microns 
## to get the kops binary
it is for creating cluster
now downlode the kops 
get the link from githup
[githup link for kops release](https://github.com/kubernetes/kops/releases)

[Downlode binary link for linux](https://github.com/kubernetes/kops/releases/download/v1.22.2/kops-linux-amd64)

```
wget https://github.com/kubernetes/kops/releases/download/v1.22.2/kops-linux-amd64
```
change the file mode to executable
* chmod 700 \<filename>
```
chmod 700 kops-linux-arm64
```
move the file to /usr/local/bin
* mv \<filename> \<destination path>
```
mv kops-linux-arm64 /usr/local/bin
```
rename the file 
* mv \<filename> \<new file name>
```
mv kops-linux-arm64 kops
```
