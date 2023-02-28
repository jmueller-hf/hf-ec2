terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.48.0"
    }
  }

  required_version = ">= 1.2.0"
}

locals {
  default_tags = {
    "Environment" = var.environment
    "Name" = ""
    "Service Role" = ""
  }
}

provider "aws" {
#  default_tags {
#    tags = merge(local.cost_center, local.default_tags)
#  }
}


module "hf-ec2" {
  source  = "app.terraform.io/healthfirst/hf-ec2/aws"
  version = "1.0.0"
  os_platform   = var.os_platform
  environment   = environment
  subnet_type   = subnet_type
  cost_center   = cost_center
  instance_name = instance_name
  instance_size = instance_size
}
