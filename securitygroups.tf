#creating security group for opening the port mysql 3306
resource "aws_security_group" "for_rds" {
    description = "created_for_rds"
    vpc_id   = module.vpc.vpc_id
   ingress  {
    cidr_blocks = [local.anyport]
    description = "for_my_sql_rds"
    from_port = local.my_sql_port
    protocol = local.protocol
    to_port  = local.my_sql_port
    }
    depends_on = [
      module.vpc
    ]
    tags = {
        "name" = "open_my_sql"

    }
  
}
#creating security group for opening the port 80
resource "aws_security_group" "web" {
    description = "created_for_web"
    vpc_id   = module.vpc.vpc_id
   ingress  {
    cidr_blocks = [local.anyport]
    description = "for_my_web"
    from_port = local.http
    protocol = local.protocol
    to_port  = local.http
    }
    

   ingress  {
    cidr_blocks = [local.anyport]
    description = "for_open_port_22"
    from_port = local.ssh
    protocol = local.protocol
    to_port  = local.ssh
    }
    
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
    depends_on = [
      module.vpc
    ]
    tags = {
        "name" = "open_my_sql"

    }
  
}
