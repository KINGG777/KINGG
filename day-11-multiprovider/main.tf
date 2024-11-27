resource "aws_s3_bucket" "s3-1" {
  bucket = "kingg-n.virginia"
}

resource "aws_s3_bucket" "s3-2" {
  bucket = "kingg-mumbai"
  provider = aws.mumbai
}
resource "aws_s3_bucket" "s3-3" {
  bucket = "kingg-singapore"
  provider = aws.singapore
}