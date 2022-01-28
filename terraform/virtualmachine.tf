

resource "aws_key_pair" "wordpress_key" {
  key_name   = var.key_wordpress_name
  public_key = var.wordpress_pub_key
}

module "ec2_instance" {
  source                 = "./modules/aws-instance"
  image_type             = var.image_type
  instance_type          = var.instance_type
  key_name               = var.key_wordpress_name
  vpc_security_group_ids = [[aws_security_group.for_instance.id], [aws_security_group.for_db.id]]
  subnet_id              = aws_subnet.wordpress_subnets.*.id
  tag_inumber            = var.tag_inumber
  tag_type               = var.tag_type
  tag_owner              = var.tag_owner

}
resource "null_resource" "ansible" {
  provisioner "local-exec" {
    command = "ansible-playbook -i ../aws_ec2.yaml ../playbook.yaml"
  }
  depends_on = [module.ec2_instance]
}
  