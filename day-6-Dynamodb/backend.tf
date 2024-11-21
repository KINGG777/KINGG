terraform {
  backend "s3" {
    bucket = "kingg"
    region = "us-east-1"
    encrypt = true
    key = "dynamodb/terraform.tfstate"

   dynamodb_table = "KINGG-State-Locks"
  }
}