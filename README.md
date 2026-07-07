# Terraform AWS Docker EC2

Deploy an Amazon EC2 instance on AWS using Terraform. The instance is automatically configured with Docker through `user_data` and runs an Nginx container on startup.


## Prerequisites

Before running the project, ensure you have:

- Terraform installed
- AWS CLI installed and configured
- An AWS account
- A valid EC2 Key Pair in the target AWS region

## Configuration

Edit `terraform.tfvars`:

```hcl
key_name = "your-key-pair-name"
```

Replace the value with the name of your existing EC2 Key Pair.

## Deployment

Initialize Terraform:

```bash
terraform init
```

Review the execution plan:

```bash
terraform plan
```

Create the infrastructure:

```bash
terraform apply
```

Destroy the infrastructure:

```bash
terraform destroy
```

## Resources Created

- EC2 Instance
- Security Group
- Default VPC
- Default Subnet
- Latest Amazon Linux 2023 AMI

## Output

After deployment Terraform prints the public IP address of the EC2 instance.

## Notes

- SSH (22) and HTTP (80) are currently open to all IP addresses for demonstration purposes.
- The project relies on the default AWS VPC and subnet.
- AWS credentials are not stored in the project and must be configured locally.
