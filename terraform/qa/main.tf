module "ec2" {

   source = "../module/ec2"
   ami = var.ami
  
   env = var.env
}

