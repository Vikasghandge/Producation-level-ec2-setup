terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  required_version = ">= 1.0.0"
}

# backend configuration should be defined in a separate block/file or within terraform block *only with backend*
terraform {
  backend "s3" {
    bucket         = "three-tire-bucket-ssm"
    key            = "ec2-setup/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    # dynamodb_table = "terraform-lock-table"
  }
}
