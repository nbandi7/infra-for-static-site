resource "aws_kms_key" "s3_bucket_key" {
  description             = "KMS Key to encrypt S3 bucket"
  deletion_window_in_days = 10

  policy = jsonencode({
    Version : "2012-10-17",
    Statement : [
      {
        Sid : "Allow Root IAM User to use key",
        Effect : "Allow",
        Principal : {
          "AWS" = "arn:aws:iam::${var.aws_account_id}:root"
        },
        Action : [
          "kms:*"
        ],
        Resource : "*"
      },
      {
        Sid : "Allow S3 to use the key",
        Effect : "Allow",
        Principal : {
          Service : "s3.amazonaws.com"
        },
        Action : [
          "kms:Encrypt",
          "kms:Decrypt",
          "kms:ReEncrypt*",
          "kms:GenerateDataKey*",
          "kms:DescribeKey"
        ],
        Resource : "*"
      }
    ]
  })
}