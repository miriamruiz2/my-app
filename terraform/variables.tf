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

#-----remote backend
variable "bucket_name" {
  description = "The name of the bucket. If omitted, Terraform will assign a random, unique name."
  type        = string
  default     = null
}
variable "bucket_prefix" {
  description = "Creates a unique bucket name beginning with the specified prefix. Conflicts with bucket."
  type        = string
  default     = "test-"
}
variable "tags" {
  type        = map(any)
  description = "A mapping of tags to assign to the bucket."
  default     = {
    Name        = "Testing"
    Environment = "Develop"
  }
}
variable "versioning" {
  type        = bool
  description = "A state of versioning."
  default     = true
}
variable "block_public_acls" {
  description = "Whether Amazon S3 should block public ACLs for this bucket."
  type        = bool
  default     = true
}

variable "block_public_policy" {
  description = "Whether Amazon S3 should block public bucket policies for this bucket."
  type        = bool
  default     = true
}

variable "ignore_public_acls" {
  description = "Whether Amazon S3 should ignore public ACLs for this bucket."
  type        = bool
  default     = true
}

variable "restrict_public_buckets" {
  description = "Whether Amazon S3 should restrict public bucket policies for this bucket."
  type        = bool
  default     = true
}

variable "s3_count" {
  type        = number
  description = "Number of Instances"
  default     = 1
}
variable "kms_master_key_id" {
  type        = string
  description = "Encrypt KMS Key"
  default     = null
}
variable "sse_algorithm" {
  type        = string
  description = "(required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms"
  default     = "aws:kms"
}