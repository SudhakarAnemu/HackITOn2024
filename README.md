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


