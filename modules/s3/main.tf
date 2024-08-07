resource "aws_s3_bucket" "data_lake" {
  bucket = var.bucket_name
  acl    = "private"

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  lifecycle_rule {
    id      = "log"
    enabled = true
    prefix  = "log/"
    expiration {
      days = 30
    }
  }
}

output "bucket_id" {
  value = aws_s3_bucket.data_lake.id
}
