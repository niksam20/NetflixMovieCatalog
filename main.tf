terraform {
  required_providers {
        aws = {
            source  = "hashicorp/aws"
      version = ">=5.55"
        }
    }

    required_version = ">= 1.7.0"
}

provider "aws" {
    region = "us-east-1"
    profile = "default"
}

resource "aws_instance" "netflix_app" {
    ami = "ami-020cba7c55df1f615"
    instance_type = "t2.micro"

    tags = {
        Name = "netflix-app"
    }
}
