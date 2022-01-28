
resource "aws_elb" "wordpress_lb" {
  name            = "wordpress-lb"
  subnets         = [aws_subnet.wordpress_subnets[0].id]
  security_groups = [aws_security_group.for_lb.id]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
}
resource "aws_key_pair" "wordpress_key" {
  key_name   = var.key_wordpress_name
  public_key = var.wordpress_pub_key
}

resource "aws_launch_template" "wordpress_lt" {
  name_prefix            = "wordpress-lt"
  image_id               = var.image_type
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.for_instance.id]
  key_name               = var.key_wordpress_name
  tags = {
    Type  = "web"
    Owner = "wordpress"
  }
}

resource "aws_autoscaling_group" "wordpress_asg" {
  vpc_zone_identifier = [aws_subnet.wordpress_subnets[0].id]
  load_balancers      = [aws_elb.wordpress_lb.id]
  desired_capacity    = var.desired_capacity
  max_size            = var.max_size
  min_size            = var.min_size

  launch_template {
    id      = aws_launch_template.wordpress_lt.id
    version = "$Latest"
  }
  tag {
    key                 = "Type"
    value               = "web"
    propagate_at_launch = true
  }
  tag {
    key                 = "Owner"
    value               = "wordpress"
    propagate_at_launch = true
  }
  provisioner "local-exec" {
    command = "ansible-playbook -i ../aws_ec2.yaml ../playbook.yaml"
  }
}