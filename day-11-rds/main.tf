resource "aws_db_instance" "mysql" {
  engine = "mysql"
  engine_version = "8.0"
  identifier = "terraform-database"
  username = "kingg"
  password = "kingg123"
  instance_class = "db.t3.micro"
  allocated_storage = 20
}