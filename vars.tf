variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  default = "10.1.0.0/16"
}

variable "cidr_subnet_1" {
  description = "CIDR block for the subnet"
  default = "10.1.1.0/24"
}

variable "cidr_subnet_2" {
  description = "CIDR block for the subnet 2"
  default = "10.1.2.0/24"
}


variable "availability_zone_1" {
  description = "availability zone to create subnet"
  default = "us-east-1a"
}

variable "availability_zone_2" {
  description = "availability zone to create subnet 2"
  default = "us-east-1b"
}


variable "instance_ami" {
  description = "AMI for aws EC2 instance"
  default = "ami-07957d39ebba800d5"
}

variable "public_key_path" {
  description = "Public key path"
  default = "~/.ssh/id_rsa.pub"
}

variable "instance_type" {
  description = "type for aws EC2 instance"
  default = "t2.micro"
}