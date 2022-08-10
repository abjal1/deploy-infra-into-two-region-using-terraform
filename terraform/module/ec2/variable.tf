variable "ami" {
  default = "ami-090fa75af13c156b4"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "name" {
  default = "app-server"
}

variable "env" {
  default = "dev"
}

variable "region" {
  default = "us-east-1"
}
