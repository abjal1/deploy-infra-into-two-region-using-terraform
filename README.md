# deploy-infra-into-two-region-using-terraform

extra notes:
 
#element(list, index), count usage <br />


variable "subnets" { <br />
   type = list <br />
   default = ["us-east-1a", "us-east-1b", "us-east-1c"] <br />
 } <br />
 
 count = 3 <br />
 subnet_id = element(var.subnets, count.index) <br />
 
 ------------- <br />
 
#map and lookup 

Lookup retrieves the value of a single element from a map <br />

variable "ec2_ami" { <br />
  type = map <br />

  default = { <br />
    us-east-2 = "ami-0416962131234133f" <br />
    us-west-1 = "ami-006fce872b320923e" <br />
  } <br />
} <br />

ami = lookup(var.ec2_ami,var.region)  <br />

#launch multiple ec2 instances

resource "aws_instance" "my-machine" {  <br />
   #Creates four identical aws ec2 instances <br />
  count = 4     <br />
  
  #All four instances will have the same ami and instance_type <br />
  ami = lookup(var.ec2_ami,var.region) <br />
  instance_type = var.instance_type # <br />
  tags = { <br />
    # The count.index allows you to launch a resource <br />
    # starting with the distinct index number 0 and corresponding to this instance. <br />
    Name = "my-machine-${count.index}" <br />
  }<br />
}<br />
 
 
