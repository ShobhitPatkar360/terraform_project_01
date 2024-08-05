

variable "instance_count" {
  default = 2
}

variable "route_table_name" {
  default = "my-route-table"
}
variable "igw_name" {
  default = "my-igw"
}

variable "vpc_name" {
  default = "my-vpc"
}

variable "sg_name" {
  default = "my-sg"
}

variable "key_name" {
  default = "my-key"
}

variable "availability_zone" {
  default = "us-east-1a"
}

variable "subnet_name" {
  default = "my-subnet"
}

variable "sg_id" {
  default = "my-sg"
}

variable "instance_name" {
  default = "my-instance"
}

variable "env" {
  default = "my-env"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  default = "some"
}


variable "cidr_block" {
  default = "some"
}

variable "subnet_cird_block" {
  default = "2.2.0.0/24"
}


# Types of variables
# 1. some from agrument 
# 2. some taker form resource attribute


