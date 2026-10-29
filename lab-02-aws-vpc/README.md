# LAB-02: Creating Your First AWS Resource

## Objective

Deploy and manage an AWS VPC using Terraform, understand resource replacement versus in-place updates, inspect Terraform State, and safely destroy infrastructure.

## Environment

- Terraform CLI
- HashiCorp AWS Provider 6.x
- AWS Region: `us-east-1`
- Resource: `aws_vpc.main`

## Lab Activities

1. Initialized the Terraform working directory using `terraform init`.
2. Created an AWS VPC with CIDR `10.0.0.0/16`.
3. Validated and deployed the configuration using `terraform fmt`, `terraform validate`, `terraform plan`, and `terraform apply`.
4. Changed the VPC CIDR to `192.168.0.0/16`, triggering resource replacement (`-/+`).
5. Updated the `Environment` tag from `Lab` to `learning-terraform`, triggering an in-place update (`~`).
6. Inspected the Terraform State using `terraform state list` and `terraform state show`.
7. Destroyed the VPC using `terraform destroy`.
8. Confirmed that no managed resources remained in Terraform State.

## Key Takeaways

- Terraform configuration describes the desired infrastructure.
- Terraform State tracks managed resources and their attributes.
- Changing a VPC CIDR can require resource replacement.
- Updating resource tags can be performed in place without replacing the VPC.
- `terraform plan` previews proposed infrastructure changes.
- `terraform apply` executes approved changes.
- `terraform destroy` removes managed infrastructure.

## Final Status

**Completed successfully.**

The AWS VPC was destroyed, and the Terraform State contains no managed resources.
