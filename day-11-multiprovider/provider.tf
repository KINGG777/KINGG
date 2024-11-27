provider "aws" {
  region = "us-east-1"
}
provider "aws" {
  region = "ap-south-1"
  alias = "mumbai"
}
provider "aws" {
  region = "ap-southeast-1"
  alias = "singapore"
}