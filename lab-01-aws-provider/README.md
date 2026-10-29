# LAB-01: Getting Started with Terraform Configuration with AWS

## Objective

Initialize a Terraform project, configure the AWS provider,
validate the configuration, and understand Terraform version constraints.

## Environment

- Terraform CLI: 1.15.8
- AWS Provider: 6.71.0
- AWS Region: us-east-1
- Operating System: macOS ARM64

## Tasks Completed

1. Verified Terraform CLI installation and version.
2. Created the Terraform working directory.
3. Created main.tf, providers.tf, and variables.tf.
4. Configured the HashiCorp AWS provider.
5. Formatted the configuration using terraform fmt.
6. Initialized the working directory using terraform init.
7. Validated the configuration using terraform validate.
8. Tested an incompatible Terraform version constraint.
9. Corrected the constraint and reinitialized successfully.

## Troubleshooting Exercise

### Error: Unsupported Terraform Core version

Intentionally configured:

    required_version = ">= 99.0.0"

Terraform rejected the configuration because the installed
Terraform CLI version was 1.15.8.

### Resolution

Restored the supported version constraint:

    required_version = ">= 1.12.2"

Then executed:

    terraform init
    terraform validate

Result:

    Success! The configuration is valid.

## Key Concepts Learned

- Terraform CLI and providers have independent versions.
- Version constraints control compatibility.
- terraform init downloads required providers.
- .terraform.lock.hcl records selected provider versions.
- terraform validate checks configuration validity.
- Terraform state and dependency lock files serve different purposes.

## AWS Resources

No AWS resources were deployed during this lab.
AWS credentials were not required.

## Outcome

Successfully initialized and validated a Terraform
configuration using the HashiCorp AWS provider.
