resource "aws_s3_bucket" "test-bucket" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "test-bucket"
  acl           = "public-read"
  force_destroy = true
  tags = {
    Name        = "Test Bucket"
    Environment = "Dev"
  }
}
