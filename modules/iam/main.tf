resource "aws_iam_role" "glue_role" {
  name = "glue_service_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "glue.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })

  inline_policy {
    name = "glue-s3-access"
    policy = jsonencode({
      Version = "2012-10-17",
      Statement = [
        {
          Effect = "Allow",
          Action = [
            "s3:GetObject",
            "s3:PutObject",
            "s3:ListBucket"
          ],
          Resource = [
            module.s3.bucket_arn,
            "${module.s3.bucket_arn}/*"
          ]
        }
      ]
    })
  }
}

output "glue_role_arn" {
  value = aws_iam_role.glue_role.arn
}
