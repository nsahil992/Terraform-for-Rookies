resource "aws_iam_policy" "ios_s3_policy" {
  name        = "ios_s3_access_policy"
  description = "Allows iOS group to access S3 bucket"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["s3:ListBucket", "s3:GetObject", "s3:PutObject"]
        Resource = [
          "arn:aws:s3:::ios-books",
          "arn:aws:s3:::ios-books/*"
        ]
      }
    ]
  })
}

