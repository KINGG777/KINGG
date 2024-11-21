resource "aws_s3_bucket" "name" {
  bucket = "terraform-statefile-508"
}
resource "aws_s3_bucket_versioning" "name" {
  bucket = aws_s3_bucket.name.id
  versioning_configuration {
    status = "Enabled"
  }
}
terraform {
  backend "s3" {
    bucket = "kingg"
    region = "us-east-1"
    key = "terraform.tfstate"
    encrypt = true
  }
}