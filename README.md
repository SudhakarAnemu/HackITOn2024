# HackITOn2024

aws : sudhaeai@gmail.com

1. Created MQVM vm on aws - 
2. Install MQ on this VM
3. Create AMI from this VM
4. Created a new VM from existing AMI - its good 
Here we need to specify the key and secuirty group at Console. 
5. Lets create VM using Terraform. 



---------------------------------------------------------------------- Step 5. 

HDS+sanemu@R914SKHM MINGW64 ~/OneDrive - Hitachi Vantara/Desktop/jssudha/Keys
$ aws configure
AWS Access Key ID [****************3BEJ]:
AWS Secret Access Key [****************vcIy]:
Default region name [us-east-1]: ap-south-1
Default output format [table]:






Suggestions. 

1. Use promothesis and Grafana to monitor WMQ
2. Use github actions. 
3. Enable telegram notifications for all pushes
4. Ansible to create MQ queues and for all regular activites. 
   add qmgr to a cluster. 
   remove qmgr from a cluster. 
5. Terraform to create a new instance.
6.  Github actions -> update new vm details -> push the code -> terraform apply -> VM creation. 
7. 

Tools : 

1. Putty to connect server. 
2. winscp to copy SW to the server. 
3. Git - documentation
4. 


Issues and resolution 

1. VM was not able to accesss : 
a. prepared ingress and outgress (tcp to accecpt all for 0.0.0.0 cidr)



scp command : 

scp -i <private_key_file> <local_file> <username>@<public_ip_address>:<remote_directory>

scp -i <private_key_file> <local_file> <username>@<public_ip_address>:<remote_directory>

scp -i jssepaws2024sudhaeaiPublickKey js.txt ec2-user@13.126.81.144:/tmp/