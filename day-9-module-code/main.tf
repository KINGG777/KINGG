module "ec2-create" {
  source = "../day-9-module-template"
  ami-id = "ami-012967cc5a8c9f891"
  instance-ty = "t2.micro"
  key = "nkey"
}

# module "s3-create" {
#   source = "../day-9-module-template"
#   bucket = "kinggdevops"
# }