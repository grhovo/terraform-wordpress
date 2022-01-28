
resource "aws_db_instance" "wordpress_rds" {
  allocated_storage    = var.storage
  engine               = var.engine
  instance_class       = var.db_instance_type
  name                 = var.dbname
  username             = var.username
  password             = var.password
  vpc_security_group_ids = var.security_group_db
  skip_final_snapshot  = true
}