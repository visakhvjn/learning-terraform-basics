# Authentication
provider "aws" {
    region = "ap-south-1"
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
}

# Creating the instance
resource "aws_instance" "myec2" {
    ami = "ami-0d176f79571d18a8f"
    instance_type = "t2.micro"
    
    tags = {
      Name = "my-first-ec2"
    }
}