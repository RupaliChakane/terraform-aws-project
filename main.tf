terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.49.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "webserver" {
  ami           = "ami-0152204c1a187337c"
  instance_type = "t3.micro"
  count = 2

  tags = {
    Name = "webserver"
  }
}

