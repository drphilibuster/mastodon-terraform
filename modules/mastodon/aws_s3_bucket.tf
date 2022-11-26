resource "aws_s3_bucket" "mastodon" {
  bucket = var.aws_s3_bucket_name
}

resource "aws_s3_bucket_cors_configuration" "mastadon_cors" {
  bucket = aws_s3_bucket.mastodon.id

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["GET", "HEAD"]
    allowed_origins = ["*"]
    max_age_seconds = 3000
  }
}
