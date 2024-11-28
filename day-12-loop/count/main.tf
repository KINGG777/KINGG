resource "aws_instance" "count" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
# #   ONLY COUNT
#     count = 3
#   tags = {
#     Name="KINGG"
#   }

# # COUNT WITH INDEX AFTER NAME
# count = 3
# tags = {
#   Name = "KINGG-${(count.index)+1}"
# }

#FROM TFVARS
count = length(var.loop)
tags = {
 Name = var.loop[count.index]
}
} 