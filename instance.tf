#Define the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.70.0"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region     = "us-west-2"
  access_key = var.access_key
  secret_key = var.secret_key
}

#Define the resource to be created

resource "aws_instance" "juliohe_LinuxEc2_TerraformInstance" {
  ami           = "ami-00f7e5c52c0f43726" #Linux image
  instance_type = "t2.micro"
}