variable "region" {
    type = string
    default = "us-west-2"
  
}

variable "cidr_block" {
    type = string
    default = "172.16.0.0/16"
  
}

variable "sub_cidrs" {
    type    = list(string)
    
  
}

variable "subnet_name_tags" {
    type =list(string)
  
}
variable "subnet_azs" {
    type =list(string)
  
}