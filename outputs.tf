output "instance_id" {
  value       = module.ec2.instance_id
  description = "The instance id"
}

output "instance_ip" {
  value       = module.ec2.instance_ip
  description = "The instance private IPv4 address"
}

output "instance_name" {
  value       = module.ec2.instance_name
  description = "The instance name"
}

output "instance_fqdn" {
  value       = module.ec2.instance_fqdn
  description = "The instance fully qualified domain name"
}

output "instance_key_name" {
  value       = module.ec2.instance_key_name
  description = "The instance key name"
}
