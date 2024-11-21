terraform {
backend "s3" {
    bucket="kingg"
    region = "us-east-1"
    key = "day-6/terraform.tfstate"
    encrypt = true
}
}