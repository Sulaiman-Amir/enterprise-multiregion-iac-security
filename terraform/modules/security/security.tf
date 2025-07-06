# terraform/modules/security/security.tf

# Enable GuardDuty
resource "aws_guardduty_detector" "main" {
  enable = true
}

# Enable AWS Security Hub
resource "aws_securityhub_account" "main" {
  depends_on = [aws_guardduty_detector.main]
}

# Enable AWS Inspector2
resource "aws_inspector2_enabler" "main" {
  account_ids = ["self"]
  resource_types = ["EC2", "ECR"]
}

# Create a KMS key for encryption
resource "aws_kms_key" "main" {
  description = "KMS key for securing sensitive data"
  deletion_window_in_days = 10
}

# Enable AWS Config for compliance
resource "aws_config_configuration_recorder" "main" {
  name     = "config-recorder"
  role_arn = aws_iam_role.config_role.arn
}

resource "aws_config_delivery_channel" "main" {
  name           = "config-channel"
  s3_bucket_name = aws_s3_bucket.config_bucket.bucket
}

# IAM role for Config recorder
resource "aws_iam_role" "config_role" {
  name = "config-recorder-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "config.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

# S3 bucket for Config logs
resource "aws_s3_bucket" "config_bucket" {
  bucket = "config-logs-${random_id.unique.hex}"
}

resource "random_id" "unique" {
  byte_length = 4
}

