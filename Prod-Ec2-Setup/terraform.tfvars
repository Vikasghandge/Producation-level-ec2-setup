region           = "ap-south-1"
project_name     = "vikas-app"
ami_id           = "ami-0f918f7e67a3323f0"
instance_type    = "t2.large"
root_volume_size = 30
key_name         = "vikas-key"
# vpc_id           = "vpc-xxxxxxxxxxxxxxxxx" # Uncomment and set if not using default VPC
# subnet_id        = "subnet-xxxxxxxxxxxxxxxxx" # Uncomment and set if not using default subnet

# Restrict SSH access to specific IPs for better security
ssh_allowed_cidr = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"] # Example: internal networks only

common_tags = {
  Environment = "Production"
  ManagedBy   = "Terraform"
  Owner       = "DevOps"
  Project     = "HighAvailabilityApp"
  Department  = "Engineering"
  CostCenter  = "CC123"
}
