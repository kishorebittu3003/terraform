variable "vpc" {
  type    = list(string)
  default ="10.0.0.0/16"
}


variable "subnet_1" {
  type    = list(string)
  default ="10.0.0.0/24"
}


variable "subnet_2" {
  type    = list(string)
  default ="10.0.1.0/24"
}



variable "subnet_3" {
  type    = list(string)
  default ="10.0.2.0/24"
}


