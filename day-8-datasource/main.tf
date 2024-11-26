resource "aws_instance" "ec2" {
  ami = "ami-012967cc5a8c9f891"
  instance_type = "t2.micro"
  key_name = "nkey"
  subnet_id = data.aws_subnet.subnet.id
  tags = {
    Name= "KINGG"
  }
}
