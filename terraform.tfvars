cidr              = "10.0.0.0/16"
key_name          = "terraform-demo-faiq"
public_key_path   = file("~/.ssh/id_rsa.pub")
private_key_path  = file("~/.ssh/id_rsa")
ami_id            = "ami-0261755bbcb8c4a84"
instance_type     = "t2.micro"
instance_username = "ubuntu"
