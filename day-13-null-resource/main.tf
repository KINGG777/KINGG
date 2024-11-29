resource "aws_db_instance" "rds" {
  identifier = "db-terraform"
  engine = "mysql"
  engine_version = "8.0"
  username = "kingg"
  password = "kingg123"
  skip_final_snapshot = true
  publicly_accessible = false
  db_name = "mydatabase"
  allocated_storage = 20
  instance_class = "db.t3.micro"
  vpc_security_group_ids = [ aws_security_group.sg.id ]
  db_subnet_group_name = aws_db_subnet_group.db-sub.name
}
data "aws_subnets" "name" {
  filter {
    name = "tag:Name"
    values = [ "KINGG","DB-SUB" ]
  }
}
resource "aws_db_subnet_group" "db-sub" {
  name = "db-subnet"
  subnet_ids = data.aws_subnets.name.ids
}
resource "aws_security_group" "sg" {
  name = "db-sg"
  ingress {
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
}
resource "null_resource" "sql" {
  depends_on = [ aws_db_instance.rds ]
    provisioner "local-exec" {
      command = <<EOT
      mysql -h ${aws_db_instance.rds.address} \
      -u kingg \
      -pkingg123 \
      -e "source ./db.sql"
      EOT
    }
    }