# Terraform Infrastructure Deployment Project
This GitHub repository contains Terraform code for deploying a multi-environment infrastructure on AWS. The project includes various components such as VPC, EC2 instances, security groups, NAT gateway, remote state management, Jenkins pipeline integration, and automated email notifications using AWS SES and Lambda.

# Project Overview
This project aims to automate the deployment of a robust AWS infrastructure using Terraform. It sets up both development and production environments in two different AWS regions, us-east-1 and eu-central-1. The infrastructure includes network components, EC2 instances, security groups, remote state management, Jenkins integration, and email notifications.

# Key Features
Multi-Environment Deployment: Easily deploy infrastructure in two AWS regions, enabling separate development and production environments.

Infrastructure as Code: Use Terraform to define and provision all AWS resources, ensuring consistency and version control.

Security Groups: Create custom security groups to control access to EC2 instances.

Bastion Host: Deploy a Bastion host in the public subnet for secure SSH access to the private instances.

Remote State Management: Store Terraform state files remotely in DynamoDB for collaborative development and locking.

Jenkins Integration: Build a Jenkins pipeline for automated infrastructure deployment, allowing parameterized deployments to different environments.

Email Notifications: Configure AWS SES to send email notifications via a Lambda function when changes occur in the Terraform state.

# Getting Started
To deploy this infrastructure using Terraform, follow these steps:

Clone this GitHub repository.

Navigate to the specific environment directory (dev or prod) where you want to apply the infrastructure.

Create a .tfvars file for your environment and configure the required variables.

Run terraform init to initialize the Terraform workspace.

Run terraform apply -var-file=<your_env_vars.tfvars> to apply the infrastructure.

Please refer to the specific environment's README file for detailed deployment instructions.
