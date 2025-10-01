# Terraform AWS EKS Project

This repository contains Terraform configurations to provision an AWS EKS (Elastic Kubernetes Service) cluster along with its networking resources (VPC, subnets, etc.).

## Project Structure

- **providers.tf**: Configures the required Terraform providers (e.g., AWS).
- **vpc.tf**: Defines VPC, subnets, and related networking resources.
- **EKS.tf**: Defines the EKS cluster and related resources.

## Prerequisites

- Terraform >= 1.0
- AWS CLI configured with appropriate IAM permissions
- AWS Account

## Usage

1. **Initialize Terraform:**
   ```bash (terminaL)
  ---> run command
      terraform init
      
2. Validate the configuration:
   '''bash (terminal)
   ---> run command
      terraform validate 
      
3.  Preview the changes:
    '''bash (terminal)
    ---> run command
       terraform plan

4. Apply the configuration:
    '''bash (terminal)
    ---> run command
        terraform apply

Outputs:--
The Terraform configuration may output the EKS cluster name and other details (if configured in outputs.tf).

Cleanup:--
To destroy all resources created by Terraform:
      '''bash (terminal)
    ---> run command
      terraform destroy

   

   
