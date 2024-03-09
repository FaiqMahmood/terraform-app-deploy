# Deploying Flask Application on EC2 Instance with Terraform

This project demonstrates the use of Terraform provisioners to automate the deployment of the Flask application on an EC2 instance using Terraform. Terraform is utilized to provision and manage the necessary AWS resources including VPC, subnets, internet gateway, route tables, security groups, and EC2 instances

## Prerequisites

Before getting started, ensure you have the following:

- AWS account with appropriate permissions to create resources
- Terraform installed on your local machine

## Terraform Configuration

The Terraform configuration in this project defines the infrastructure required for deploying the Flask application. Here's an overview of the resources created:

- **AWS Key Pair**: A key pair is created to allow SSH access to the EC2 instance.
- **VPC and Subnet**: A VPC with a subnet is created to host the EC2 instance.
- **Internet Gateway**: An internet gateway is attached to the VPC to enable internet access.
- **Route Table**: A route table is associated with the VPC to route traffic.
- **Security Group**: A security group is configured to control inbound and outbound traffic to the EC2 instance.
- **EC2 Instance**: An EC2 instance is launched with the Flask application deployed and running.

## Provisioning

The EC2 instance is provisioned using the following steps:

1. **Update Packages**: The package lists are updated on the EC2 instance.
2. **Install Python3 and pip**: Python3 and pip are installed to support Flask application deployment.
3. **Install Flask**: Flask is installed using pip.
4. **Copy Application File**: The Flask application file (`app.py`) is copied to the EC2 instance.
5. **Start Flask Application**: The Flask application is started in the background.

## Usage

Follow these steps to deploy the Flask application using Terraform:

1. Clone the repository to your local machine.
2. Navigate to the project directory.
3. Update the `terraform.tfvars` file with your desired configuration, including AWS credentials and other variables.
4. Initialize Terraform by running `terraform init`.
5. Review the planned changes by running `terraform plan`.
6. Apply the Terraform configuration by running `terraform apply`.
7. Once the deployment is complete, access the Flask application by navigating to the public IP address of the EC2 instance in a web browser.
   - Access on HTTP (not HTTPS)
   - If unable to access the application, ssh into the EC2 instance and run the following command `sudo python3 app.py`

## Cleanup

To clean up and delete all resources created by Terraform, run `terraform destroy` after you are finished using the application.

By following these steps, you can easily deploy a Flask application on an EC2 instance using Terraform provisioners. Happy coding!
