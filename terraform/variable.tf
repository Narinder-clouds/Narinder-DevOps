terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}
variable "x" {
    type = string  
}
resource "aws_instance" "server" {
    instance_type = var.x
    ami = "ami-0e2c8caa4b6378d8c"
}