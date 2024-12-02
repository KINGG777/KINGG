locals {
  ami = "ami-012967cc5a8c9f891"
  type="t2.micro"
  key = "nkey"
  bkt ="kingg-locals-input"
}

resource "aws_instance" "name" {
  ami = local.ami
  instance_type = local.type
  key_name = local.key
}

resource "aws_s3_bucket" "bucket" {
  bucket = local.bkt
}