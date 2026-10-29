# LAB-05: Terraform State, Data Sources & CLI Commands

## Objective
Practice managing Terraform State, retrieving existing AWS information using Data Sources, and inspecting infrastructure through Terraform CLI commands.

## AWS Infrastructure
- Region: `us-east-1`
- VPC: `development-vpc` — `172.16.0.0/16`
- Subnet: `development-subnet` — `172.16.1.0/24`
- Availability Zone: `us-east-1a`

## Terraform Configuration
- `providers.tf` — AWS provider configuration and default tags
- `variables.tf` — VPC and subnet CIDR variables
- `main.tf` — AWS Data Sources, VPC and subnet resources
- `outputs.tf` — Account, region, Availability Zones and VPC outputs

## Data Sources
- `aws_availability_zones` — Retrieves available Availability Zones
- `aws_region` — Retrieves the current AWS region
- `aws_caller_identity` — Retrieves AWS account information

## Terraform Commands Practiced

```bash
terraform fmt
terraform init
terraform validate
terraform plan
terraform apply
terraform state list
terraform state show aws_vpc.development
terraform output
terraform output -json
terraform destroy
```

## Key Lessons Learned
1. Data Sources retrieve existing infrastructure information without creating new resources.
2. Terraform State tracks managed resources and records Data Source results.
3. `terraform state list` displays tracked resource and Data Source addresses.
4. `terraform state show` requires a specific resource address.
5. Outputs expose useful information for other tools and automation.
6. Sensitive outputs may still be visible through JSON and stored in Terraform State.
7. Terraform automatically determines resource dependencies through references.
8. Terraform plans should be reviewed before applying infrastructure changes.

## Validation
The deployment plan successfully identified two resources to create:

```text
Plan: 2 to add, 0 to change, 0 to destroy.
```

The VPC and subnet were created and inspected using Terraform State commands.

## Cleanup
After completing the exercises, run:

```bash
terraform destroy
```

Verify that both managed AWS resources are destroyed and no billable lab infrastructure remains.
