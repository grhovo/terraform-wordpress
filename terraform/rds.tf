
module "rds" {
  source = "./modules/rds"

  storage           = var.storage
  db_instance_type  = var.db_instance_type
  dbname            = var.dbname
  username          = var.username
  password          = var.password
  subnet_db         = [aws_subnet.wordpress_subnets[1].id, aws_subnet.wordpress_subnets[2].id]
  security_group_db = [aws_security_group.for_db.id]
  subnet_group_name = var.subnet_group_name
}

