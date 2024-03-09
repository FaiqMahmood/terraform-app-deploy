variable "cidr" {
  description = "CIDR block for the VPC"
}

variable "key_name" {
  description = "Name of the AWS key pair"
}

variable "public_key_path" {
  description = "Path to the public key file"
}

variable "private_key_path" {
  description = "Path to the private key file"
}

variable "instance_username" {
  description = "Username for SSH connection to EC2 instances"
}

variable "ami_id" {
  description = "ID of the AMI to use for the EC2 instance"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
}

variable "app_file_path" {
  description = "Path to the local application file"
}
