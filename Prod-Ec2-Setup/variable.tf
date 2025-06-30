variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "vikas-app"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0f918f7e67a3323f0"  # Specific AMI ID
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.medium"
}

variable "root_volume_size" {
  description = "Size of the root volume in GB"
  type        = number
  default     = 30
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
  default     = "vikas-key"
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
  default     = null # Will use default VPC if not specified
}

variable "subnet_id" {
  description = "ID of the subnet"
  type        = string
  default     = null # Will use default subnet if not specified
}

variable "ssh_allowed_cidr" {
  description = "CIDR blocks allowed for SSH access"
  type        = list(string)
  default     = ["0.0.0.0/0"] # Consider restricting this in production
}

variable "common_tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default = {
    Environment = "Production"
    ManagedBy   = "Terraform"
    Owner       = "DevOps"
    Project     = "HighAvailabilityApp"
  }
}