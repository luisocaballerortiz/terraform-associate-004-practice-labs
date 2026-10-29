# LAB-03: Working with Variables and Outputs

## Objective

Learn how to configure reusable Terraform infrastructure using input variables, variable files, provider default tags, and output values.

## Environment

- Terraform CLI
- AWS Provider 6.x
- AWS Region: `us-east-1`
- Resource: `aws_vpc.main`

## Lab Activities

1. Created an AWS VPC with CIDR `192.168.0.0/16`.
2. Defined `vpc_cidr` and `environment` variables in `variables.tf`.
3. Updated `main.tf` to reference input variables.
4. Created `terraform.tfvars` to override variable defaults.
5. Changed the VPC CIDR to `10.0.0.0/16` and environment to `development`.
6. Configured provider-level `default_tags`.
7. Created outputs for the VPC ID, ARN, and CIDR.
8. Tested variable precedence using `testing.tfvars` and `-var-file`.
9. Confirmed that `terraform plan` does not modify infrastructure.
10. Destroyed the VPC after completing the exercises.

## Key Takeaways

- `variables.tf` declares input variables.
- `terraform.tfvars` automatically provides variable values.
- `-var-file` selects an additional variable file explicitly.
- Provider `default_tags` applies common tags to supported AWS resources.
- `tags_all` contains the effective resource tags.
- Outputs expose useful information about managed resources.
- Separate variable files do not automatically create separate Terraform States.

## Final Status

**Completed successfully.**

The AWS VPC was destroyed after the exercises.
