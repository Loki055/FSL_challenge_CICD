provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "fsl-bucket-055"
}

resource "aws_s3_bucket_acl" "bucket_acl"{
  bucket = aws_s3_bucket.bucket.id
  acl = "private"
}
