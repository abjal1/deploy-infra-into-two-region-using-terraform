# deploy-infra-into-two-region-using-terraform

extra notes:
 
element(list, index), count usage <br />


variable "subnets" { <br />
   type = list <br />
   default = ["us-east-1a", "us-east-1b", "us-east-1c"] <br />
 } <br />
 
 count = 3 <br />
 subnet_id = element(var.subnets, count.index) <br />
 
 
 
 
