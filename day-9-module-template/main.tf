resource "aws_instance" "ec2-tp" {
  ami = var.ami-id
  instance_type = var.instance-ty
  key_name = var.key
}
# resource "aws_s3_bucket" "s3" {
#   bucket = var.bucket
# }