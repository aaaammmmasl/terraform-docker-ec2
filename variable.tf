variable "aws_region" {
  default = "eu-north-1"
}

variable "instance_type" {
  default = "t3.micro"
}
variable "ami_id" {
  description = "amazon linux 2 AMI"
}

variable "key_name" {
  description = "SSH key name"
}

