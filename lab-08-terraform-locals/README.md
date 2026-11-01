# LAB-08: Terraform Local Values on AWS

## Objective

Learn how to use Terraform local values to simplify infrastructure configuration, standardize resource naming, and apply consistent tags across multiple AWS resources.

## Technologies

- Terraform
- AWS VPC
- AWS Subnets
- AWS Security Groups
- Terraform Variables, Locals, Data Sources, and Outputs

## Infrastructure

The lab provisions:

- 1 VPC (`10.0.0.0/16`)
- 2 public-labeled subnets across two Availability Zones
- 2 private-labeled subnets across two Availability Zones
- 1 Security Group allowing inbound HTTP (80) and HTTPS (443)

**Note:** The subnets are labeled public and private for demonstration. No Internet Gateway, NAT Gateway, or custom route tables are configured.

## Terraform Concepts Practiced

### Local Values

Used `locals.tf` to define reusable resource tags and a standardized naming prefix.

### Variables and tfvars

Used `terraform.tfvars` to override the default environment from `production` to `dev`.

### Data Sources

Used `aws_region` to retrieve the current AWS region dynamically.

### Resource Dependencies

Referenced the VPC ID from subnet and Security Group configurations, allowing Terraform to determine creation dependencies automatically.

### Infrastructure Updates

Modified local values and reviewed the resulting execution plan.

Observed:

- 5 resources updated in place
- 1 Security Group replacement
- 1 resource created and 1 destroyed as part of that replacement

### Terraform State

After destroying the infrastructure, verified that `terraform state list` returned no managed resources.

Running `terraform plan` afterward showed:

```text
Plan: 6 to add, 0 to change, 0 to destroy.
```

## Commands Practiced

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform state list
terraform destroy
```

## Key Takeaways

1. Local values reduce repetitive Terraform code.
2. Variables allow environment-specific configuration.
3. Changing tags usually updates AWS resources in place.
4. Changing certain immutable resource attributes can force replacement.
5. Terraform compares the desired configuration against its state and the provider's infrastructure information to determine the required actions.
6. `terraform destroy` removes managed infrastructure without deleting Terraform configuration files.

## Lab Status

Completed. Infrastructure destroyed after testing.
