cat > README.md <<'EOF'
# LAB-09: Terraform Count and For_Each

## Objective

Learn how Terraform manages multiple AWS resources using
`count` and `for_each`, and understand how resource identity
affects infrastructure changes.

## Infrastructure

- AWS Region: us-east-1
- 1 VPC: 10.0.0.0/16
- 3 subnets created with count
- 3 subnets created with for_each

## Count

The `count` meta-argument creates resources identified
by numerical indexes:

- aws_subnet.subnet[0]
- aws_subnet.subnet[1]
- aws_subnet.subnet[2]

Removing an element from the middle of an indexed list
can cause Terraform to replace additional resources.

## For_Each

The `for_each` meta-argument creates resources identified
by stable keys:

- aws_subnet.subnet_foreach["public"]
- aws_subnet.subnet_foreach["private"]
- aws_subnet.subnet_foreach["data"]

Removing the "private" key resulted in:

Plan: 0 to add, 0 to change, 1 to destroy.

Only the private subnet was destroyed.

## Terraform Commands

terraform init
terraform plan
terraform apply
terraform state list
terraform destroy

## Key Takeaways

- count identifies resources by index.
- for_each identifies resources by key.
- for_each is useful when resources have distinct identities.
- Removing a key does not shift the identities of other resources.
- Always review terraform plan before applying changes.

## Cleanup

All AWS resources created during this lab were destroyed.

Destroy complete! Resources: 6 destroyed.
EOF
