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