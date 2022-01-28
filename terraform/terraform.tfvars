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
db_instance_type   = "db.t3.micro"
dbname             = "wordpress_db"
username           = "wordpress_user"
password           = "my_password"
subnet_group_name  = "db_subnet"

#Key pair for instance
key_wordpress_name = "wordpress-key"
wordpress_pub_key  = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDttgZi2sk4uN6ErZIeNnVLDo7WP3GGBWFLHs6mQmLlMAzOymgKdorTEQb7/fCy2jyUlb8RNE1csbLVeNis6lf0P9IAsvLK4e77m1u6oDV/e5QK4XDctjDDzEQY1w5bjBWofyeOVANyFZcTayun8dsbT6welvcIJriPrKYrwPQcVB+PUbb6lTKJay/7z8RykkAZnyILEYjbpIOccLaTgO3j4o8Qqwvdfkf8stij67AbQqGPy3D48WOlQOVd/qtiI/BIj5lK06qDFjine6/T/CFJHzS3kbAzC2yBZsHoHRH2Pj+BcnL9GENnCDJd7oGhNayovV364nV9aXZ9p2fHk1tZKwYvsApeMRsJRevPfLIlNA+iwORUAhuLw8kCOcv89qKVMPRm1Nql7Ot3bzhn5HoQauCgvllARGMb2QBb2wK0y4af3HZJdzvS2W2CdzZwropv0MlcfflEEQDpdplaAshrPRyBD8Kx/wjb4QamBEexbgH0A4d6d86gLvE7Kvm/8RU= hovo@contra100-pc"