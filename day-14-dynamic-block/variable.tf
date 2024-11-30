variable "ingress_rule" {
  default = [
    {
        from_port =22
        to_port =22
        protocol ="tcp"
        cidr_blocks =["172.50.20.0/24"]
        22 = "key"
    } ,
    {
        from_port =80
        to_port =80
        protocol ="tcp"
        cidr_blocks =["0.0.0.0/16"]
    } ,
    {
        from_port =443
        to_port =443
        protocol ="tcp"
        cidr_blocks =["0.0.0.0/24"]
    } ,
    {
        from_port =3306
        to_port =3306
        protocol ="tcp"
        cidr_blocks =["0.0.0.0/28"]
    }
  ]
}

variable "egress-rule" {
  default = [
    {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}