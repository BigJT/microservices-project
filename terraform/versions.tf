terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.63.0"
    }
  }
}

provider "aws" {
  region = var.region

  default_tags {
	tags = {
	  owner = "jtr"
	}
  }
}

variable "region" {
    description = "aws region"
    default = "eu-west-2"
}
