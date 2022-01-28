
resource "aws_vpc" "wordpress_vpc" {
  cidr_block           = var.vpc_block
  enable_dns_hostnames = true
  enable_dns_support   = true
  enable_classiclink   = false
  instance_tenancy     = "default"

}
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.wordpress_vpc.id
}

resource "aws_subnet" "wordpress_subnets" {
  count                   = length(var.subnet_blocks)
  vpc_id                  = aws_vpc.wordpress_vpc.id
  cidr_block              = var.subnet_blocks[count.index]
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zones[count.index]
}

resource "aws_route_table" "wordpress_routetable" {
  vpc_id = aws_vpc.wordpress_vpc.id

  route {
    cidr_block = var.all_ips[0]
    gateway_id = aws_internet_gateway.gw.id
  }
}

resource "aws_route_table_association" "prod-crta-public-subnet-1" {
  subnet_id      = aws_subnet.wordpress_subnets[0].id
  route_table_id = aws_route_table.wordpress_routetable.id
}

resource "aws_security_group" "for_instance" {
  name        = "Security group for instance"
  description = "Allow http from vpc and ssh from all world"
  vpc_id      = aws_vpc.wordpress_vpc.id

  ingress {
    description = "http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.all_ips
  }
  ingress {
    description = "ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.all_ips
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.all_ips
  }
  tags = {
    Type  = "web"
    Owner = "wordpress"
  }
}


resource "aws_security_group" "for_db" {
  name        = "for-db"
  description = "Allow db port from all world"
  vpc_id      = aws_vpc.wordpress_vpc.id

  ingress {
    description = "msyql"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = var.all_ips
  }
  ingress {
    description = "ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.all_ips
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.all_ips
  }
  tags = {
    Type  = "db"
    Owner = "wordpress"
  }
}