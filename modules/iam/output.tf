output "glue_role_arn" {
  description = "The ARN of the Glue service role"
  value       = aws_iam_role.glue_role.arn
}
