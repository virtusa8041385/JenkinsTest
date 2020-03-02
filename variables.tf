variable "access_key" {

description ="awskey"

}

variable "secret_key" {

description ="password"

}

variable "ami" {

default = "ami-0fd83dbdc283b6970"

}

variable "instance_type" {
description = "instance type"

}

variable "instance_name" {
description = "Instance Name"


}

variable "region" {

description = "region"

}

variable "instance_userid" {

  description = "instance user id"

  }

variable "scheduler" {

  description = "time stamp"

  }

variable "account_owner" {

  description = "Account owner"
   default = "Raj Valavala"
  }

variable "aws_key_name" {

	description = "Use this variable for Pem key"

      default = "service-now"

}

variable "subnetId" {

    description = "private subnet id"

    default = "subnet-437b763b"

}

variable "userSG" {

    description = "IP Cidr from which you are likely to RDP into the instances. You can add rules later by modifying the created security groups e.g. 54.32.98.160/32"

    default = "sg-060d386c5f5a1c96c"

}

variable "server_port" {

  description = "The port the server will use for HTTP requests"

  type        = number

  default     = 80

}
