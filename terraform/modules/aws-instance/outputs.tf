output "arn" {
  value = aws_instance.ec2_template.*.arn
}

output "public_ip" {
  value = aws_instance.ec2_template.*.public_ip
}

output "tags_all" {
  value = aws_instance.ec2_template.*.tags_all
}