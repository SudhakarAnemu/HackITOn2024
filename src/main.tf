# Terraform surce and version
terraform {
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Terraform provider and the region
provider "aws" {
  region = "ap-south-1"
}

# Terraform : Creation of an Instance based on the AMI
resource "aws_instance" "example" {
  ami           = "ami-07254721d7a4e4fef" # Replace with the AMI ID of your template
  instance_type = "t2.micro"
  key_name      = "jssepaws2024sudhaeai"

  tags = {
    Name = "TEST1236"
  }
}