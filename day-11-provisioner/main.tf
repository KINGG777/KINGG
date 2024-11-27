resource "aws_instance" "server" {
  ami = "ami-012967cc5a8c9f891"
instance_type = "t2.micro"
key_name = "nkey"

connection {
    type = "ssh"
    user ="ec2-user"
    private_key = file("~/Downloads/nkey.pem")
    host = self.public_ip
}
provisioner "file" {
  source = "demo.txt"
  destination = "/home/ec2-user/demo.txt"
}
provisioner "local-exec" {
  command = "touch kingg"
}
provisioner "remote-exec" {
    inline = [
    "touch kingg.txt", 
    "echo KINGG HERE>>kingg.txt"
    ]
}
}