terraform {
backend "s3" {
    bucket="kingg"
    region = "us-east-1"
    key = "kingg/terraform.tfstate"
    encrypt = true
}
}