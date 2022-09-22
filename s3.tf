resource "aws_s3_bucket" "bucket-rafi-nlr1" {
  bucket = "bucket-rafi-nlr1"
  acl    = "private"

  tags = {
    Name        = "bucket-rafi-nlr1"
    Environment = "Dev"
  }
}