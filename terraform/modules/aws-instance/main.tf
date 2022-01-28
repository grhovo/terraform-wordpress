resource "aws_instance" "ec2_template" {
  ami           = var.image_type
  instance_type = var.instance_type
  key_name      = var.key_name
  vpc_security_group_ids = var.vpc_security_group_ids[count.index]
  subnet_id = var.subnet_id[count.index]
  count  = length(var.tag_inumber)


  tags = {
    Type  = var.tag_type[count.index]
    Owner = var.tag_owner
    iNumber = var.tag_inumber[count.index]
  }
}
