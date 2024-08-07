output "lake_formation_admin" {
  description = "The Lake Formation admin ARN"
  value       = aws_lakeformation_data_lake_settings.default.admins
}
