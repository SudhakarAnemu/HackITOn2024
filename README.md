# HackITOn2024

Good urls :
https://github.com/aws-actions/configure-aws-credentials
https://github.com/CumulusCycles/AWS_Terraform_CI_CD_demo

aws : sudhaeai@gmail.com

1. Created MQVM vm on aws - 
2. Install MQ on this VM
3. Create AMI from this VM
4. Created a new VM from existing AMI - its good 
Here we need to specify the key and secuirty group at Console. 
5. Lets create VM using Terraform. (Under a subranch Terrarom)
6. Install ansible on aws
7. Github actions on ansible to display qmgr details.
8. Promothesus - MQ monitoting
---------------------------------------------------------------------- step 8. 
Promothesus - MQ monitoting
aws : INMQ - 172.31.40.102
QM : INDIAQM
Queue : QL.INDIAQM.SUPPLIER

Servers : INMQ, Promothesus 

https://www.linkedin.com/pulse/how-install-prometheus-ubutnu-2004-shubham-sahu/
https://medium.com/@cse.alisyedtanveer/end-to-end-monitoring-deploying-prometheus-grafana-and-exporters-on-ec2-309d7875ebf6
Medium link : https://medium.com/@kemalozz/how-to-install-and-configure-prometheus-grafana-on-rhel9-a23085992e6e
gitrepo : https://github.com/devops4solutions/prometheus-monitoring
1. install promethus 
/etc/prometheus/prometheus.yml
/usr/local/bin/prometheus
journalctl -u prometheus.service --> to check logs 
sudo systemctl start prometheus
sudo systemctl enable prometheus

Accessing grafana : 
http://3.6.92.203:3000  admin/admin 




install prome  : 




----------------------------------------------------------------------- step 7. 
Github actions on ansible to display qmgr details.
aws : INMQ - 172.31.40.102
QM : INDIAQM
Queue : QL.INDIAQM.SUPPLIER

Public key : 
[ec2-user@ip-172-31-40-102 .ssh]$ cat id_rsa.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCkUTmBNSdIb2kPE+BgXPUoMxQLV9Gb5TYAMxYppszJ0IDXynGNLXDirxaWJjQ5zlsIhsDlT+BRg1BZw1FyYtLIfj1cUupL1U6/QlI5O2ojME2xIw3dKVzNQFEKFrlrEA45Fe8dHZJX5b2tWuKu1HqYYDKuv+wWgDlOtaFU7BcrMoDT80xLgNsJ5uq9DkLVhi53oM69lHL+YesbUEx98WuE2JCAyJ5jDvAbhJNGbp8iuKMOCu63Y6OgFqyLO49CPMAAH9n+n5jSpeThon00UX6+qNvYF7EuXF8tGHRiW4FhNfdc+P0zsuACDtRYY+aitd6pLNg4DQ/4GhCJBj1oijD5UMGErLnxe/fSa0vUIN8dhJ1tLVSbXA0Sll3IY03dlPdLtaj8Qe2CacRKzlIMsCNTJNq7622HYQmPbAbO1157sOjqU39W8GHI0bXU8h/KEAY58n3hTvgyGSzsG4qqWXIsHkN4KuKyGe3Hk1YIt4ZKdurDp+4KdQPAWEWa4BP39s0= ec2-user@ip-172-31-40-102.ap-south-1.compute.internal
[ec2-user@ip-172-31-40-102 .ssh]$ pwd
/home/ec2-user/.ssh
[ec2-user@ip-172-31-40-102 .ssh]$


----------------------------------------------------------------------- step 6. 
Issues. 
1. Initial playbook was failed due to permission denied. 
solution : Added public of master to Slaves knownhosts. 

quick commands : 

ansible-playbook disptime.yml -i hosts
ansible-playbook strmqm.yml -i hosts -e @vars.yml




Install ansible and aws cli on rhl9 - aws 
ansible-galaxy collection install --force amazon.aws  --> install galaxy 



------------> install ansible
sudo yum update
sudo yum install epel-release
sudo yum install ansible              or    dnf install ansible-core
ansible --version

[root@ip-172-31-36-152 ~]# ansible --version
ansible [core 2.14.14]

----------> Install aws cli 

   6  df -h
    7  id mqm
    8  sudo pip3 install awscli
    9  sudo dnf update
   10  sudo dnf install python3
   11  sudo dnf install python3-pip
   12  sudo pip3 install awscli
   13  awsconfig
   14  aws config
   15  history
[root@ip-172-31-36-152 ~]#

[root@ip-172-31-36-152 ~]# aws ec2 describe-instances | grep MQ
                            "Value": "MQVMRHL9TEMPLATE"
                            "Value": "UAEMQ"
                            "Value": "INMQ"
[root@ip-172-31-36-152 ~]#




---------------------------------------------------------------------- Step 5. 

HDS+sanemu@R914SKHM MINGW64 ~/OneDrive - Hitachi Vantara/Desktop/jssudha/Keys
$ aws configure
AWS Access Key ID [****************3BEJ]:
AWS Secret Access Key [****************vcIy]:
Default region name [us-east-1]: ap-south-1
Default output format [table]:


---------------------------------------------------- Frequent errors : 
Warning: Unexpected input(s) 'AWS_DEFAULT_REGION', valid inputs are ['audience', 'aws-access-key-id', 'aws-secret-access-key', 'aws-session-token', 'aws-region', 'mask-aws-account-id', 'role-to-assume', 'web-identity-token-file', 'role-duration-seconds', 'role-session-name', 'role-external-id', 'role-skip-session-tagging']
Run aws-actions/configure-aws-credentials@v1
Error: Input required and not supplied: aws-region





Suggestions. 

1. Use promothesis and Grafana to monitor WMQ
2. Use github actions. 
3. Enable telegram notifications for all pushes
4. Ansible to create MQ queues and for all regular activites. 
   add qmgr to a cluster. 
   remove qmgr from a cluster. 
5. Terraform to create a new instance.
6.  Github actions -> update new vm details -> push the code -> terraform apply -> VM creation. 
7. PR - should be approved by the Team lead.
   TM will submit a PR -> Senior TM should approve the change.
8. Motto - No one should login to the server until unless there is a dead sitution.
9. Everything should be logged in Git. and required permissions from TM for critical tasks. 
10. 

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


----------------------> Create AWS ami : 

To create an AMI on AWS, you can follow these steps:

1. Launch an instance:

Go to the EC2 console in the AWS Management Console.
Click "Launch Instance".
Choose an appropriate AMI from the list of available AMIs.
Configure the instance settings as needed (instance type, key pair, security group, etc.).
Launch the instance.
2. Install and configure your desired software:

Connect to the instance using SSH or another appropriate method.
Install and configure any necessary software or applications.
3. Create a snapshot:

Go to the EC2 console and select the instance you want to create a snapshot from.
In the "Actions" menu, choose "Create Image".
Specify a name and description for the AMI.
Select the root volume to create a snapshot from.
Click "Create Image".
4. Wait for the snapshot to complete:

The process may take some time depending on the size of the root volume.
5. Create an AMI from the snapshot:

Once the snapshot is complete, select it in the EC2 console.
In the "Actions" menu, choose "Create Image".
Specify a name and description for the AMI.
Click "Create Image".
6. Wait for the AMI to complete:

The process may take some time depending on the size of the snapshot.
7. Launch instances from the new AMI:

Once the AMI is complete, you can launch new instances from it using the same process as before.
Additional tips:

You can create custom AMIs from your own instances, or use pre-built AMIs provided by AWS or third-party vendors.
Consider using tags to organize and manage your AMIs.
You can delete AMIs that you no longer need to save storage space.
For more complex scenarios, you can use tools like AWS CloudFormation to automate the process of creating and managing AMIs.
By following these steps, you can create custom AMIs on AWS and use them to launch instances with your desired configuration.

------------------------

