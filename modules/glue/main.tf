resource "aws_glue_catalog_database" "default" {
  name = var.database_name
}

resource "aws_glue_crawler" "data_lake_crawler" {
  name = "data_lake_crawler"
  database_name = aws_glue_catalog_database.default.name
  role = var.glue_role_arn

  s3_target {
    path = module.s3.bucket_arn
  }

  schedule = "cron(0 12 * * ? *)"
}

output "glue_database_name" {
  value = aws_glue_catalog_database.default.name
}
