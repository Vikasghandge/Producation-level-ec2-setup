terraform {
  backend "s3" {
    bucket         = "three-tire-bucket-ssm"
    key            = "ec2-setup/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-table" # Optional: For state locking
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  required_version = ">= 1.0.0"
}