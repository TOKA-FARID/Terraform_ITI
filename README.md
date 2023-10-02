<!-- Use HTML and CSS to change fonts -->
<h1 style="font-family: Arial, sans-serif;">Terraform Infrastructure Deployment Project</h1>

<p>This GitHub repository contains Terraform code for deploying a multi-environment infrastructure on AWS. The project includes various components such as VPC, EC2 instances, security groups, NAT gateway, remote state management, Jenkins pipeline integration, and automated email notifications using AWS SES and Lambda.</p>

<!-- Use headings for sections -->
<h2 style="font-family: Arial, sans-serif;">Project Overview</h2>
<p>This project aims to automate the deployment of a robust AWS infrastructure using Terraform. It sets up both development and production environments in two different AWS regions, us-east-1 and eu-central-1. The infrastructure includes network components, EC2 instances, security groups, remote state management, Jenkins integration, and email notifications.</p>

<!-- Use headings for subsections -->
<h3 style="font-family: Arial, sans-serif;">Key Features</h3>
<ul>
  <li>Multi-Environment Deployment: Easily deploy infrastructure in two AWS regions, enabling separate development and production environments.</li>
  <li>Infrastructure as Code: Use Terraform to define and provision all AWS resources, ensuring consistency and version control.</li>
  <li>Security Groups: Create custom security groups to control access to EC2 instances.</li>
  <li>Bastion Host: Deploy a Bastion host in the public subnet for secure SSH access to the private instances.</li>
  <li>Remote State Management: Store Terraform state files remotely in DynamoDB for collaborative development and locking.</li>
  <li>Jenkins Integration: Build a Jenkins pipeline for automated infrastructure deployment, allowing parameterized deployments to different environments.</li>
  <li>Email Notifications: Configure AWS SES to send email notifications via a Lambda function when changes occur in the Terraform state.</li>
</ul>

<!-- Use headings for sections -->
<h2 style="font-family: Arial, sans-serif;">Getting Started</h2>
<p>To deploy this infrastructure using Terraform, follow these steps:</p>
<ol>
  <li>Clone this GitHub repository.</li>
  <li>Navigate to the specific environment directory (dev or prod) where you want to apply the infrastructure.</li>
  <li>Create a .tfvars file for your environment and configure the required variables.</li>
</ol>


Run terraform init to initialize the Terraform workspace.

Run terraform apply -var-file=<your_env_vars.tfvars> to apply the infrastructure.

Please refer to the specific environment's README file for detailed deployment instructions.
