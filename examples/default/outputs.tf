# Output values of VPC network resource
output "eip_id" {
  value       = module.default.eip_id
  description = "the id of the deployed compute address"
}

output "eip_selflink" {
  value       = module.default.eip_selflink
  description = "the selflink of the deployed compute address"
}
