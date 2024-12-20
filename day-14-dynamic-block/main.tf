resource "aws_security_group" "dynamic" {
  name = "dynamic-sg"
  dynamic "ingress" {
    for_each = var.ingress_rule
    content {
      from_port = ingress.value.from_port
      to_port  = ingress.value.to_port
      protocol = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }
  # egress {
  #   from_port = 0
  #   to_port = 0
  #   protocol = "-1"
  #   cidr_blocks = ["0.0.0.0/0"]
  # }
  dynamic "egress" {
    for_each = var.egress-rule 
    content {
       from_port = egress.value.from_port
      to_port  = egress.value.to_port
      protocol = egress.value.protocol
      cidr_blocks = egress.value.cidr_blocks
    }
    
  }
}