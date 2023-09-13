
Terraform AWS Web Server Example
This repository contains Terraform scripts for creating a basic web server on AWS for learning purposes. Please note that the public and private keys used in this template are temporary and for demonstration purposes only. If you want to use these templates in your own AWS account, you must create your own AWS account and generate your own keys.

Prerequisites
Before you begin, make sure you have the following prerequisites:

AWS Account: You must have an AWS account. If you don't have one, you can sign up here.

AWS CLI: You should have the AWS Command Line Interface (CLI) installed and configured with your AWS credentials. You can download and set it up by following the instructions here.

Terraform: You need to have Terraform installed on your local machine. You can download it from the official Terraform website here.

SSH Key Pair: Generate an SSH key pair for accessing the EC2 instance. You can create one using the following command:

bash
Copy code
ssh-keygen -t rsa -b 2048 -f my-key
Replace my-key with your preferred key name.

Getting Started
Follow these steps to create the web server using Terraform:

Clone this repository to your local machine:

bash
Copy code
git clone https://github.com/your-username/aws-terraform-web-server.git
Change to the project directory:

bash
Copy code
cd aws-terraform-web-server
Initialize Terraform:

bash
Copy code
terraform init
Create a terraform.tfvars file and set your AWS access and secret keys as follows:

hcl
Copy code
access_key = "YOUR_AWS_ACCESS_KEY"
secret_key = "YOUR_AWS_SECRET_KEY"
Replace YOUR_AWS_ACCESS_KEY and YOUR_AWS_SECRET_KEY with your AWS IAM user credentials.

Review and modify the variables.tf file to customize any settings such as instance type or region to suit your needs.

Deploy the infrastructure by running:

bash
Copy code
terraform apply
Confirm the deployment by typing yes when prompted.

Accessing the Web Server
Once the Terraform script has successfully created the infrastructure, you can access the web server by using the public IP address of the EC2 instance.

To find the public IP address, run:

bash
Copy code
terraform show | grep "public_ip"
Use an SSH client to connect to the instance using the generated private key:

bash
Copy code
ssh -i path/to/your/private/key.pem ec2-user@PUBLIC_IP
Replace path/to/your/private/key.pem with the path to your private key file and PUBLIC_IP with the actual public IP address obtained from the previous step.

Cleanup
When you're done experimenting with the web server, it's essential to clean up the AWS resources to avoid unnecessary charges. Run the following command to destroy the resources created by Terraform:

bash
Copy code
terraform destroy
Confirm the destruction by typing yes when prompted.

Disclaimer
This Terraform script is for educational purposes only and may not be suitable for production use. Ensure that you understand the resources being created and associated costs before using it in a production environment.

Please remember to secure your AWS credentials, SSH keys, and any sensitive information properly.
