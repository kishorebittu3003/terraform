locals {
  az-zone-a   = format("%sa",var.region)
  az-zone-b   = format("%sb",var.region)
  az-zone-c   = format("%sc",var.region)
  az-zone-d   = format("%sd",var.region)
  my_sql_port = 3306
  http        = 80
  ssh         = 22
  instance_type = "t2.micro"
  protocol    = "tcp"
  anyport     = "0.0.0.0/0"
  //db_name     = "bittu_db"
  //password    = "bittu"

    
}