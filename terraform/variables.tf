###Network variables
variable "vpc_block" {
  type        = string
  description = "Ip address range for vpc"
}

variable "subnet_blocks" {
  type        = list(string)
  description = "Ip address range for subnets"
}

variable "availability_zones" {
  type        = list(string)
  description = "The AZ for the subnet"
  default     = null
}

variable "all_ips" {
  type        = list(string)
  description = "all IP addreses"
}
##EC2 variables
variable "image_type" {
  type        = string
  description = "Image id for wordpress"
}

variable "instance_type" {
  type        = string
  description = "Instance type"
}

variable "key_name" {
  type        = string
  description = "Key for this instance, if it already exists"
  default     = null
}


###Key pair variables
variable "key_wordpress_name" {
  type        = string
  description = "Key name"
}

variable "wordpress_pub_key" {
  type        = string
  description = "Public key for remote connection"
}



#Tags
variable "tag_type" {
  type        = list(string)
  description = "Type of the instance"
}

variable "tag_owner" {
  type        = string
  description = "Owner of the instance"
}

variable "tag_inumber" {
  type        = list(string)
  description = "Unique ID of instance"
}