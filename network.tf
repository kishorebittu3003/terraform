module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.my_vpc

  azs             = [local.az-zone-a, local.az-zone-b, local.az-zone-c,local.az-zone-d]
  private_subnets =  var.pvt_sub_cidrs
  public_subnets  =  var.pub_sub_cidrs

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "qa"
  }
}