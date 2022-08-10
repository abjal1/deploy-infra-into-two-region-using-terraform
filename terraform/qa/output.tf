output "ec2_public_ip" {
  description = "This is the ec2 instance pubic ip address"
  value = module.ec2[*].public_ip
}
