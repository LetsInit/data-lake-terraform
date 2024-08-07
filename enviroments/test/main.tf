provider "aws" {
  region = "us-west-2"
}

module "s3" {
  source      = "../../modules/s3"
  bucket_name = var.bucket_name
}

module "iam" {
  source     = "../../modules/iam"
  bucket_arn = module.s3.bucket_arn
}

module "lake_formation" {
  source     = "../../modules/lake_formation"
  admin_arn  = var.admin_arn
  bucket_arn = module.s3.bucket_arn
}

module "glue" {
  source        = "../../modules/glue"
  database_name = var.database_name
  glue_role_arn = module.iam.glue_role_arn
}
