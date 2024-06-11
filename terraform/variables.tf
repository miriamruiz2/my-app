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

variable "alarm_actions" {
  description = "ARNs of actions to take when the alarm state changes"
  type        = list(string)
  default     = []
}