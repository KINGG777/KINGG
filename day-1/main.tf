resource "aws_instance" "name" {
  ami =var.ami
  instance_type = var.type
  key_name = "nkey"
  availability_zone = var.az
}