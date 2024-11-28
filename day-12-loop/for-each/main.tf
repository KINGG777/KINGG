resource "aws_instance" "for_each" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
   for_each = toset(var.loop)
  tags = {
    Name = each.key
  }


#FOR_EACH KEY VALUE PRACTICE
  # for_each = {
  #    key = "value"
  #   Name = "ok"
  # }
  # tags = {
  #   # Name = each.key
  #   # Name = each.value
  # }
}