#Network parameters
vpc_block          = "10.0.0.0/16"
subnet_blocks      = ["10.0.1.0/24", "10.0.2.0/24"]
availability_zones = ["us-west-1a", "us-west-1b"]
all_ips            = ["0.0.0.0/0"]


#EC2 parameters
image_type    = "ami-031b673f443c2172c"
instance_type = "t2.micro"


#Key pair for instance
key_wordpress_name = "wordpress-key"
wordpress_pub_key  = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDi7OZhEdCD7BmHi7jxxo12vd7LJUAitfth+d+ePJWwwi2T23RAObltQCULlYFimHIss3aEtUj44MKOURr3I2EfdWo9tx3XXjN5KfXxHx6bGE88yCqoNHTEI9Md6Ob99JEAIxROZaBTCFENERsb0Xq3KieaZbrMgft10TAW69Gm5YmVZ5JjIJoQCt8RTU/0LTJjfXuvoFP/0UkVTyW3T/wXZv/dc4t1tOgfBbhJldECxvLqbgLAxb5R56KQGdN31XNZyVEnjOl4oci4brOgIbShhzGFEXof2Cl7sM9MQ82chwxY+DBHPC0GiWGe3IBQUhbV5JhhCZCGXTUFQC3DEmfAkVqFHlqNfEqZqew8XQvVJX7oPP2KZFe439zLYnqZi3N+DZkangEpETRjwInbpRRDeMaxEpbN5Xvtp/qD3KlmDNbhPZnZzsA/cmm/xAoQOKlvYQaX2mz3XwTKazKi96E8I8hPH9uol9N75/DLx660TTfeaaOcnzH/utdQe9Jked8= hovo@contra100-pc"


#Tags
tag_inumber = ["abc12", "abc13"]
tag_type    = ["web", "db"]
tag_owner   = "Hovo"