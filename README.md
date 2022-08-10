# deploy-infra-into-two-region-using-terraform

extra notes:
 
element(list, index), count usage 

variable "subnets" {
   type = list
   default = ["us-east-1a", "us-east-1b", "us-east-1c"]
 }
 
 count = 3
 subnet_id = element(var.subnets, count.index)
 
 
