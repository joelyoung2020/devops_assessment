variable "aws_region" {
  description = "AWS region"
  default = "us-west-1"
}

variable "ami_id" {
  description = "ID of the AMI to provision. Default is Ubuntu 14.04 Base Image"
  default = "ami-06d79d5316d395362"
}

variable "instance_type" {
  description = "type of EC2 instance"
  default = "t2.micro"
}

variable "name" {
  description = "name to pass to Name tag"
  default = "Terraform_ec2"
}
