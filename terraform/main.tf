terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

#provider "aws" {
 # region  = "us-west-1a"#
#}

resource "aws_instance" "app_server" {
  ami           = "ami-0e2c8caa4b6378d8c"
  instance_type = "t2.micro"
}
