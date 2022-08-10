module "ec2" {
   source = "../module/ec2"
   ami = var.ami

   providers = {
      aws = aws.europe
  }

}
