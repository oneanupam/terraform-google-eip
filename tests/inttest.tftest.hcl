// To pass the variables value to all test cases of this test file as it is defined at root level.
variables {
  region = "us-central1"
  zone   = "us-central1-a"
}

// This is test case 01.
run "validate_network_tier" {
  // By default, tests within Terraform create real infrastructure and can run assertions and validations against that infrastructure. This is analogous to integration testing.
  command = apply

  // To pass the variables value to specific run block as it is defined within run block level.
  variables {
    address_name = "my-eip-address"
    network_tier = "PREMIUM"
  }

  assert {
    condition     = google_compute_address.external_address.network_tier == "PREMIUM"
    error_message = "[ERROR]: network tier should be premium"
  }
}
