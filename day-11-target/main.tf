resource "aws_instance" "ec2" {
   ami = "ami-012967cc5a8c9f891"
  instance_type = "t2.micro"
  key_name = "nkey"
}
resource "aws_s3_bucket" "s3" {
    bucket = "kingg-day-11"
}

#TERRAFORM APPLY -TARGET=AWS_INSTANCE.EC2
#TERRAFORM APPLY -TARGET=AWS_INSTANCE.EC2 -TARGET=AWS-S3_BUCKET_S3
#TERRAFORM DESTROY -TARGET=AWS_INSTANCE.EC2
# LOOP
resource "aws_instance" "ec2-l" {
   ami = "ami-012967cc5a8c9f891"
  instance_type = "t2.micro"
  key_name = "nkey"
}
resource "aws_s3_bucket" "s3-l" {
    bucket = "kingg-day-11-l"
}