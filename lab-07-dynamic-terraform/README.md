# LAB-07: Dynamic and Reusable Terraform Configurations

## Objective
Refactor static AWS infrastructure into a dynamic, reusable Terraform configuration using input variables, data sources, and outputs.

## AWS Infrastructure
- VPC with configurable CIDR
- Private subnet with dynamically selected Availability Zone
- Route table associated with the VPC

## Terraform Concepts
- Input variables and default values
- terraform.tfvars overrides
- AWS data sources: availability zones, region, caller identity
- Resource references and interpolation
- Terraform outputs
- In-place updates versus resource replacement

## Validation and Testing
1. Ran terraform init and terraform validate.
2. Planned and created three AWS resources.
3. Changed environment from development to testing.
4. Verified the plan showed 0 to add, 3 to change, 0 to destroy.
5. Applied the in-place tag updates.
6. Destroyed all three managed resources.

## Commands
```bash
terraform init
terraform validate
terraform plan
terraform apply
terraform output
terraform destroy
```

## Result
Successfully demonstrated reusable infrastructure configuration, dynamic AWS metadata lookup, and in-place resource updates.

## Cleanup
All AWS resources created for this lab were destroyed.
