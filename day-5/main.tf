resource "aws_vpc" "kingg_local" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name="KINGG"
  }
}

resource "aws_subnet" "kingg_local" {
  cidr_block = "10.0.0.0/24"
  vpc_id = aws_vpc.kingg_local.id
  tags = {
    Name="public-subnet"
  }
}

resource "aws_internet_gateway" "kingg_local_ig" {
  vpc_id = aws_vpc.kingg_local.id
  tags = {
    Name="ig"
  }
}

resource "aws_route_table" "kingg_local_rt" {
vpc_id = aws_vpc.kingg_local.id
tags = {
  Name="pub-route"
}
route {
    cidr_block="0.0.0.0/0"
    gateway_id = aws_internet_gateway.kingg_local_ig.id
}
} 

resource "aws_route_table_association" "kingg_local" {
  subnet_id = aws_subnet.kingg_local.id
  route_table_id = aws_route_table.kingg_local_rt.id
}


resource "aws_security_group" "kingg_local-sg" {
  name = "ssh only"
  vpc_id = aws_vpc.kingg_local.id
  tags = {
    Name="custom-sg"
  }
  ingress {
    description ="ssh"
    from_port = 22
    to_port =22
    protocol ="TCP"
    cidr_blocks =["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol ="-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "ec2" {
  ami = "ami-012967cc5a8c9f891"
  instance_type = "t2.micro"
  key_name = "nkey"
  subnet_id = aws_subnet.kingg_local.id
  security_groups = [ aws_security_group.kingg_local-sg.id ]
  associate_public_ip_address = true
  tags = {
    Name = "TERRAFORM EC2"
  }
}