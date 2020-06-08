provider "aws" {
    region = "ap-southeast-2"
}

# VPCs

resource "aws_vpc" "sandbox" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = "sandbox"
  }
}

# Security Groups

resource "aws_security_group" "cloudera-utility-sg" {
    name = "cloudera-utility-sg"
    vpc_id = "vpc-b30a04d4"
}

resource "aws_security_group" "cloudera-edge-sg" {
    name = "cloudera-edge-sg"
    vpc_id = "vpc-b30a04d4"
}

resource "aws_security_group" "cloudera-master-sg" {
    name = "cloudera-master-sg"
    vpc_id = "vpc-b30a04d4"
}

resource "aws_security_group" "cloudera-worker-sg" {
    name = "cloudera-worker-sg"
    vpc_id = "vpc-b30a04d4"
}

# Machines

resource "aws_instance" "cloudera-utility-01" {
  ami           = "ami-04bd9fac35d58053f"        #an AMI that I created
  instance_type = "t2.micro"
}

resource "aws_instance" "cloudera-master-01" {
  ami           = "ami-04bd9fac35d58053f"        #an AMI that I created
  instance_type = "t2.micro"
}

resource "aws_instance" "cloudera-master-02" {
  ami           = "ami-04bd9fac35d58053f"        #an AMI that I created
  instance_type = "t2.micro"
}

resource "aws_instance" "cloudera-master-03" {
  ami           = "ami-04bd9fac35d58053f"        #an AMI that I created
  instance_type = "t2.micro"
}

resource "aws_instance" "cloudera-worker-01" {
  ami           = "ami-04bd9fac35d58053f"        #an AMI that I created
  instance_type = "t2.micro"
}

resource "aws_instance" "cloudera-worker-02" {
  ami           = "ami-04bd9fac35d58053f"        #an AMI that I created
  instance_type = "t2.micro"
}

resource "aws_instance" "cloudera-worker-03" {
  ami           = "ami-04bd9fac35d58053f"        #an AMI that I created
  instance_type = "t2.micro"
}

resource "aws_instance" "cloudera-edge-01" {
  ami           = "ami-04bd9fac35d58053f"        #an AMI that I created
  instance_type = "t2.micro"
}