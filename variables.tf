variable "region" {
  type        = string
  description = "the region of the resource"
}

variable "zone" {
  type        = string
  description = "the zone of the resource"
}

variable "project_id" {
  type        = string
  description = "the id of the google lcoud project"
}

variable "address_name" {
  type        = string
  description = "the name of the compute address"
}

variable "network_tier" {
  type        = string
  description = "the network tier for the compute address"
}
