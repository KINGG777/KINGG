variable "ami" {
  description = "ami variable"
  type = string
  default = ""
}
variable "type" {
    description = "instance type"
    type = string
    default = ""
}
variable "az" {
  description = "availability zone variable"
  type = string
  default = "us-east-1b"
}