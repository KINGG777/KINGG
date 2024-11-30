resource "aws_security_group" "name" {
  name = "using-for-loop-sg"
  ingress = [
    for x in [ 22,80,443,3306 ] :
    {
        description = "inbound"
        from_port = x
        to_port = x
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
       ipv6_cidr_blocks = []
       prefix_list_ids = []
       security_groups = []
       self = false
    }
  ]
  egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks  = ["0.0.0.0/0"]
  }
}
# FOR LOOP WITH X=KEY Y=VALUE
resource "aws_security_group" "sg" {
  name = "using-for-loop-source-var"
  ingress = [
    for x,y in var.sg-ports : {
        description = "ingress loop"
       from_port = x
        to_port = x
        protocol = "tcp"
        cidr_blocks  = y
        ipv6_cidr_blocks = []
       prefix_list_ids = []
       security_groups = []
       self = false
        
    }
  ]
  egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks  = ["0.0.0.0/0"]
  }
}