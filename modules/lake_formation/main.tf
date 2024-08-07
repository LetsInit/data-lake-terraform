resource "aws_lakeformation_data_lake_settings" "default" {
  admins = [var.admin_arn]
}

resource "aws_lakeformation_permissions" "bucket_access" {
  principal {
    data_lake_principal_identifier = var.admin_arn
  }

  permissions = ["ALL"]

  data_location {
    arn = module.s3.bucket_arn
  }
}

output "lake_formation_admin" {
  value = aws_lakeformation_data_lake_settings.default.admins
}
