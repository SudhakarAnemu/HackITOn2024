resource "aws_instance" "example" {
  ami           = "ami-05938fdb1ee29ea96" # Replace with the AMI ID of your template
  instance_type = "t2.micro"
  key_name     = "jssepaws2024sudhaeai"

  tags = {
    Name = "mqtest1"
  }
}