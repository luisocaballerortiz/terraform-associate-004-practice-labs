
locals {
  tags = {
    Environment = var.environment
    Project     = "terraform-improved-demo"
    Owner       = "devops-team"
    CostCenter  = "cc-5678"
    Region      = data.aws_region.current.region
    ManagedBy   = "terraform"
    Lab         = "lab-07"
  }

  name_prefix = "${var.environment}-tf-"
}
