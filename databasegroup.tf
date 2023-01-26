#creating db_subnet_group
resource "aws_db_subnet_group" "database_subnets" {
    name = "for db subnets"
    subnet_ids = [module.vpc.private_subnets[0],module.vpc.private_subnets[1],module.vpc.private_subnets[2],]
  tags = {
    "name" = "database_subs"
  }
  depends_on = [
    module.vpc
  ]
}
#creating db_instance
resource "aws_db_instance" "db_instance" {
  allocated_storage    = 20
  db_name              = var.db_name
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  username             = "root"
  password             = "iloveyoumom"
  skip_final_snapshot  = true
  db_subnet_group_name = aws_db_subnet_group.database_subnets.name
  vpc_security_group_ids = [aws_security_group.for_rds.id]
  depends_on = [
    module.vpc,
    aws_db_subnet_group.database_subnets
]
}