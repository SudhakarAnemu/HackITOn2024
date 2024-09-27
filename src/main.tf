terraform {
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-05938fdb1ee29ea96" # Replace with the AMI ID of your template
  instance_type = "t2.micro"
  key_name      = "jssepaws2024sudhaeai"

  tags = {
    Name = "Prometheus"
  }
}