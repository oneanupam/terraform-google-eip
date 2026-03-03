output "eip_id" {
  value       = google_compute_address.external_address.id
  description = "the id of the deployed compute address"
}

output "eip_selflink" {
  value       = google_compute_address.external_address.self_link
  description = "the selflink of the deployed compute address"
}
