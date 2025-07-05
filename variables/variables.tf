variable "ami_id" {
  type = string
  default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "tags" {
  type = map 
  default = {
    Name = "Ec2 Tags"
    Project = "Roboshop"
    Environment = "DEV"
    Component = "Web"
    Terraform = "true"
  }
}

variable "sg-name" {
  type = string
  default = "roboshop_all_aws"
}
variable "sg-description" {
  type = string
  default = "Allow all traffic"
}
variable "sg-cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}
variable "inbound_from_port" {
  type = number
  default = 0
}
