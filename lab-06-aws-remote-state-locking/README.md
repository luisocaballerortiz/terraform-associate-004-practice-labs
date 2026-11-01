# LAB-06: AWS Remote State and Locking

## Objective
Configure Terraform remote state using Amazon S3 and test native S3 state locking.

## Architecture
- Amazon S3 bucket for Terraform state storage
- S3 backend with encryption enabled
- Native state locking using `use_lockfile = true`
- Terraform-managed AWS networking resources

## What I Practiced
1. Provisioned an S3 bucket using Terraform.
2. Configured an S3 remote backend.
3. Migrated local Terraform state to S3.
4. Tested state locking and observed a lock-related error.
5. Removed the test lock and restored normal operations.
6. Migrated remote state back to local storage.
7. Destroyed the networking resources and S3 bucket.

## Key Concepts
- Local versus remote Terraform state
- State migration
- Team collaboration and shared state
- State locking and concurrent operations
- S3 encryption and backend configuration
- Infrastructure cleanup

## Important Files
- `main.tf`: networking infrastructure
- `providers.tf`: AWS provider configuration
- `variables.tf`: input variables
- `backend.tf.disabled`: archived S3 backend configuration
- `s3_backend/main.tf`: S3 backend infrastructure

## Security
Terraform state files, local provider directories, and sensitive variable files are excluded from Git using `.gitignore`.

## Cleanup
All AWS resources created for this lab were destroyed.
