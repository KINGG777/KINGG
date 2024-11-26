module "ec2-git" {
  source = "github.com/KINGG777/Terraform-code"
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
}