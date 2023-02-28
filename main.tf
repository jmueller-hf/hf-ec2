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


module "ec2" {
  source  = "app.terraform.io/healthfirst/hf-ec2/aws"
  version = "1.1.0"
  os_platform   = var.os_platform
  environment   = var.environment
  subnet_type   = var.subnet_type
  cost_center   = var.cost_center
  instance_name = var.instance_name
  instance_size = var.instance_size
  ami_filters   = var.ami_filters
  account_vars  = var.account_vars
  cost_centers  = var.cost_centers
}
