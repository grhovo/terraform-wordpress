variable "image_type" {
  type        = string
  description = "Image id for wordpress"
}

variable "instance_type" {
  type        = string
  description = "Instance type"
}

variable "key_name" {
  type    = string
  description = "Key for this instance, if it already exists"
  default = null 
}

variable "vpc_security_group_ids"{
    type = list(list(string))
    description = "A list of security group names to associate with."
    default = null
}

variable "subnet_id" {
    type = list(string)
    description = "VPC Subnet ID to launch in"
}

variable "tag_type" {
  type = list(string)
  description = "Type of the instance"
}

variable "tag_owner"{
  type = string
  description = "Owner of the instance"
}

variable "tag_inumber"{
  type = list(string)
  description = "Unique ID of instance"
}