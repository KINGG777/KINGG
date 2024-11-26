resource "aws_instance" "ec2" {
  ami = "ami-012967cc5a8c9f891"
  instance_type = "t2.micro"
  key_name = "nkey"
  availability_zone = "us-east-1b"
#   lifecycle {
#     prevent_destroy = true
#  }
tags = {
  Name ="KINGG"
}
# lifecycle {
#   ignore_changes = [ tags ]
# }
}



# resource "aws_s3_bucket" "s3" {
#   bucket = "kinggdevopsok"

# #   lifecycle {
# #     create_before_destroy = true
# #   }
# }  