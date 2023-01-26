variable "region" {
    type = string
    default = "us-west-2"
  
}
variable "vpc_name" {
    type = string
  
}

variable "my_vpc" {
    type = string
    default = "10.0.0.0/16"
  
}

variable "pvt_sub_cidrs" {
    type = list(string)
  
}
variable "pub_sub_cidrs" {
    type = list(string)
}

variable "az_zones" {
    type = list(string)
  
}
variable "db_name" {
    type = string
    default = "bittu_db"
}

variable "ami_id" {
    type = string
    description = "for_ami_id_in_oregon"
    default = "ami-017fecd1353bcc96e"
  
}
variable "instance_type" {
    type = string
    default = "t2.micro"
  
}
//variable "password" {
   // type = string
   // default = "bittu"
  
//}