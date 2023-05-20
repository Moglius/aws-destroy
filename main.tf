variable "aws_region" {
    type = string
    description = "Region to use for AWS instance"
    default = "us-east-1"
    sensitive = false
}

variable "instance_id" {
    type = string
    description = "Region to use for AWS instance"
    default = "no-id"
    sensitive = false
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "myvm" {
  ami           = "unknown"
  instance_type = "unknown"
}