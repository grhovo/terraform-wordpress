variable "dbname" {
  type = string
  description = "Database name"
}
variable "username" {
  type = string
  description = "Database username"
}
variable "password" {
  type = string
  description = "Database password"
}
variable "db_instance_type" {
  type = string
  description = "Database instance compute size"
}
variable "storage" {
  type = string
  description = "Database size"
}
variable "subnet_db" {
  type = list(string)
  description = "Database subnet"
}
variable "security_group_db" {
  type = list(string)
  description = "Database subnet"
}
variable "subnet_group_name" {
  type = string
  description = "Database subnet group name"
}
variable "engine" {
  type = string
  description = "The database engine to use."
  default = "mysql"
}