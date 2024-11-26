resource "aws_key_pair" "key" {
  key_name  = "KINGG"
  public_key = file("~/.ssh/id_rsa.pub")
}