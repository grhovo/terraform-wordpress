#Network parameters
vpc_block          = "10.0.0.0/16"
subnet_blocks     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
availability_zones = ["us-west-1a", "us-west-1a", "us-west-1b"]
all_ips            = ["0.0.0.0/0"]

#Autoscaling parameters
desired_capacity   = 2
min_size           = 1
max_size           = 3

#EC2 parameters
image_type         = "ami-031b673f443c2172c"
instance_type      = "t2.micro"

#DB parameters
storage            = 10
db_instance_type   = "db.t2.small"
dbname             = "wordpress_db"
username           = "wordpress_user"
password           = "my_password"
subnet_group_name  = "db_subnet"

#Key pair for instance
key_wordpress_name = "wordpress-key"
wordpress_pub_key  = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC0p7cMQuLBih7au46PWYTyHQOSO/EJLDXwh3uCU+HLhAQTwH3vTBSRvpQjS9bbnf4/PjAsbPhZHkHxb4QS8S2jxLnKX2qRWY5UOoZICunrPrRKjqHT+ENvjjIF8U5at9KHX6SvGKl16eQQa4cE28+XZYeCwfZaW1D0wrY4oi9E/ZhKboyATBsBlcUZzH+AxnwfU/5R5Jqp7LortwVuSaXUa6ATpB00f09mvfotQD4jjGOtco5rWWvm4yUvUTxmINBRgm6iaN+gE9jILyJ55HGl0LhDz/H4omnWShkbqGQcQujK1jHgmBnURYIspYoPrQTNIN+nbS4P7m05m/yr2C22+YnqkrNwAJOphUeAVdT0z9p78JHLahMHBR0Tn/jFjW2tj5lJjdT69hZxvylC1AlLpw8y5TdZ9opz3Est6zT1EFApgAk7gnRY/HGV+ZDuG8S0vv9aH2QzxWblxApxvnbleUX5jpjfs4+cv9VqrmBPJuzReODMgMmYXsShjejOeT0= root@jenkinsbdg"
