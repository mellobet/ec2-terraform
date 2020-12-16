# Basic create aws vpc
resource "aws_vpc" "tf-main-vpc" {
  cidr_block = var.cidr_vpc

  # Optionals
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "tf-main-vpc"
  }
}


# Add an internet gateway so this VPC can reach Internet. attached via ID to the created VPC
resource "aws_internet_gateway" "tf-igw" {
  vpc_id = aws_vpc.tf-main-vpc.id
}


# Subnet
resource "aws_subnet" "tf-public-subnet" {
  vpc_id     = aws_vpc.tf-main-vpc.id
  cidr_block = var.cidr_subnet
  # Optionals
  map_public_ip_on_launch = true
}

# Route (anything to created internet gateway)
resource "aws_route_table" "rtb_public" {
  vpc_id = aws_vpc.tf-main-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.tf-igw.id
  }
}

# Route association.
resource "aws_route_table_association" "rta_subnet_public" {
  subnet_id      = aws_subnet.tf-public-subnet.id
  route_table_id = aws_route_table.rtb_public.id
}
