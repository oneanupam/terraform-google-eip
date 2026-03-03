# Module block to deploy VPC Network
module "default" {
  source = "../.."

  project      = var.project_id
  name         = var.address_name
  address_type = "EXTERNAL"
  region       = var.region
  network_tier = var.network_tier
}
