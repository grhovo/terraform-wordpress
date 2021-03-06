variable "vpc_block" {
  type        = string
  description = "Ip address range for vpc"
}

variable "subnet_blocks" {
  type        = list(string)
  description = "Ip address range for subnets"
}

variable "availability_zones" {
  type = list(string)
  description = "The AZ for the subnet"
  default = null
}

variable "all_ips" {
  type        = list(string)
  description = "all IP addreses"
}

variable "image_type" {
  type        = string
  description = "Image id for wordpress"
}

variable "instance_type" {
  type        = string
  description = "Instance type"
}

variable "desired_capacity" {
  type        = number
  description = "Desired capacity of asg"
}

variable "min_size" {
  type        = number
  description = "Minimum capacity of asg"
}

variable "max_size" {
  type        = number
  description = "Maximum capacity of asg"
}
variable "key_wordpress_name" {
  type        = string
  description = "Key name"
}
variable "dbname" {
  type        = string
  description = "Database name"
}
variable "username" {
  type        = string
  description = "Database username"
}
variable "password" {
  type        = string
  description = "Database password"
}
variable "db_instance_type" {
  type        = string
  description = "Database instance compute size"
}
variable "storage" {
  type        = string
  description = "Database size"
}
variable "subnet_group_name" {
  type = string
  description = "Database subnet group name"
}
variable "wordpress_pub_key" {
  type = string
  description = "Public key for remote connection"
}