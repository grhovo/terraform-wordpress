###Summary
Terraform and ansible code to create wordpress site in AWS,
Check variables that need to specify in roles,
To run infrastracture, use terraform init, then terraform apply in terraform folder

###Variables to define
export AWS_SECRET_ACCESS_KEY=
export AWS_ACCESS_KEY_ID=

###Dependencies need to install: 
install python3 and pip, with pip install boto3 for dynamic inventory
install ansible and ansible amazon collection


###Commands
apt-get install python3 python-pip3
pip3 install boto3
apt-get install ansible
ansible-galaxy collection install amazon.aws

###Notes
Create key-pair in your local machine with ssh-keygen and give it name wordpress_key
Add public key to terraform.tfvars as value for wordpress_pub_key



