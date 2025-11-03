# Dynamic EC2 Deployment with Terraform

This project contains Terraform configuration for deploying EC2 instances on AWS with dynamic configuration options.

## Prerequisites

- Terraform v1.13.4 or later
- AWS CLI configured with appropriate credentials
- An AWS account with necessary permissions

## Project Structure

- `ec2.tf` - Main configuration file containing AWS provider and resource definitions
- `variables.tf` - Variable definitions for customizable parameters
- `terraform.tfvars` - (Not included - contains sensitive data) Variable values for your deployment
- `terraform.tfvars.example` - Example variable values file

## Configuration

1. Clone this repository:
```bash
git clone https://github.com/kipling752/dynmic_deploy_ec2.git
cd dynmic_deploy_ec2
```

2. Copy the example variables file:
```bash
cp terraform.tfvars.example terraform.tfvars
```

3. Edit `terraform.tfvars` with your specific values:
- `instance_type` - EC2 instance type (e.g., "t2.micro")
- `instance_name` - Name tag for your EC2 instance
- `key_name` - Your AWS key pair name
- `security_group_name` - Name for the security group

## Usage

1. Initialize Terraform:
```bash
terraform init
```

2. Review the planned changes:
```bash
terraform plan
```

3. Apply the configuration:
```bash
terraform apply
```

4. To destroy the resources:
```bash
terraform destroy
```

## Security Groups

The configuration creates a security group with the following rules:
- Inbound HTTP (port 80)
- Inbound HTTPS (port 443)
- Inbound SSH (port 22)
- All outbound traffic allowed

## Resources Created

- EC2 instance with specified AMI and instance type
- Security group with HTTP, HTTPS, and SSH access
- Elastic IP address associated with the instance

## Notes

- Make sure to never commit `terraform.tfvars` as it may contain sensitive information
- Always review the plan before applying changes
- Remember to destroy resources when they're no longer needed to avoid unnecessary costs

## Contributing

Feel free to submit issues and enhancement requests!