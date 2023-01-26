resource "aws_instance" "ec2" {
    ami = var.ami_id
    associate_public_ip_address = true
    instance_type               = var.instance_type
    key_name                    = "key"
    vpc_security_group_ids      = [aws_security_group.web.id]
    subnet_id                   = module.vpc.public_subnets[0]
    tags ={
        "name" = "ec2_start"
    }
    depends_on = [
      module.vpc,
      aws_security_group.web
    ]

  
}