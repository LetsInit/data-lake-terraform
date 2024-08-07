variable "database_name" {
  description = "The name of the Glue database"
  type        = string
}

variable "glue_role_arn" {
  description = "The ARN of the Glue service role"
  type        = string
}
