terraform {
  # Assumes s3 bucket and dynamo DB table already set up
  backend "s3" {
    bucket         = "project1-tf-state"
    key            = "web-app/terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "terraform-state-locking"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


provider "aws" {
  region = "eu-west-2"
}

variable "db_pass" {
  description = "password for database"
  type        = string
  sensitive   = true
}

locals {
  environment_name = terraform.workspace
}

module "web_app_1" {
  source = "../webapp_module"

  # Input Variables
  bucket_prefix    = "web-app-data-${local.environment_name}"
  #domain           = "imaneaity.com"
  environment_name = local.environment_name
  instance_type    = "t3.micro"
  create_dns_zone  = terraform.workspace == "production" ? true : false
  db_name          = "${local.environment_name}mydb"
  db_user          = "foo"
  db_pass          = var.db_pass
}

