variable "region" {
  type        = string
  description = "The AWS region to create things in."
}

variable "vpc_cidr" {
  type        = string
  description = "The VPC cidr block"
}

variable "cluster-name" {
  type    = string
  description = "The name of the cluster "
}

variable "ec2-instance" {
  type    = string
  default = "i-03e485bc335b9a58a"
}

variable "alarm_actions" {
  description = "ARNs of actions to take when the alarm state changes"
  type        = list(string)
  default     = []
}