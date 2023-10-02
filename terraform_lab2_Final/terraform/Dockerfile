# Use an official Jenkins image as the base image
FROM jenkins/jenkins:lts

# Switch to root user for installation
USER root

# Install necessary packages, e.g., unzip, wget, and any other dependencies required for Terraform
RUN apt-get update && apt-get install -y \
    unzip \
    wget

# Download and install Terraform
RUN wget https://releases.hashicorp.com/terraform/0.15.5/terraform_0.15.5_linux_amd64.zip -O terraform.zip && \
    unzip terraform.zip && \
    mv terraform /usr/local/bin/ && \
    rm terraform.zip

# Switch back to the Jenkins user
USER jenkins
