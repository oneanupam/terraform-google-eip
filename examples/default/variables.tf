variable "region" {
  type        = string
  description = "the region of the resource"
  default     = "us-central1"
}

variable "zone" {
  type        = string
  description = "the zone of the resource"
  default     = "us-central1-a"
}

variable "project_id" {
  type        = string
  description = "the id of the google lcoud project"
  default     = "tidal-outlook-488409-e6"
}

variable "address_name" {
  type        = string
  description = "the name of the compute address"
  default     = "my-eip-address"
}

variable "network_tier" {
  type        = string
  description = "the network tier for the compute address"
  default     = "STANDARD"
}
