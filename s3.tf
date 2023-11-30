resource "aws_s3_bucket" "awsb46-s3" {
  bucket = "my-tf-test-awsb46-s3"

  tags = {
    Name        = "awsb46-s3"
    Environment = "Dev"
  }
}