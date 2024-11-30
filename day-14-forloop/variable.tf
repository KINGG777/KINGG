variable "sg-ports" {
  default = {
    22 = ["0.0.1.0/24"]
    80 = ["0.0.2.0/24"]
    443 = ["0.0.3.0/24"]
    3306 = ["0.0.4.0/24"]
  }
}
#THESE ARE NOT USEABLE CIDR BLOCK USED FOR TESTING ONLY