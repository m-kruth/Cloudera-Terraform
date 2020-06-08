provider "aws" {
    region = "ap-southeast-2"
}

# VPCs

resource "aws_vpc" "sandbox" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "dedicated"

  tags = {
    Name = "sandbox"
  }
}

resource "aws_vpc" "dev" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "dedicated"

  tags = {
    Name = "dev"
  }
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