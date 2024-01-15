resource "aws_s3_bucket" "jinnliong_bucket" {
  bucket = "jinnliong-makes-buckets"  # Replace with your desired bucket name

  tags = {
    Name        = "Jinn Liong bucket"
    Environment = "Pro"
  }
}

resource "aws_s3_bucket_acl" "jinnliong_bucket_id" {
  bucket = aws_s3_bucket.jinnliong_bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "jinnliong_bucket_versioning" {
  bucket = aws_s3_bucket.jinnliong_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}