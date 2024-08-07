variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "admin_arn" {
  description = "The ARN of the Lake Formation admin"
  type        = string
}

variable "database_name" {
  description = "The name of the Glue database"
  type        = string
}
