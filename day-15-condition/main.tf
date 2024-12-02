# resource "aws_instance" "name" {
#   count = var.cond ? 1:0
#   ami = "ami-012967cc5a8c9f891"
#   instance_type = "t2.micro"
#   key_name = "nkey"
# }

resource "random_string" "random" {
  count = var.cond ? 1:0
  length = 4
  upper = false
  special = false
}

resource "aws_s3_bucket" "name" {
  count = var.cond ? 1:0 
  bucket = "kingg-cond${random_string.random[count.index].id}"
}