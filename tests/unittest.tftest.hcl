/*
# The optional test block defines the configuration of the test file, allowing you to configure how the framework executes its runs.

# This will run all the test cases in parallel default. Setting parallel to false will run the test cases sequentially.
test {
  parallel = true
}
*/

// To pass the variables value to the test cases.
variables {
  region = "us-central1"
  zone   = "us-central1-a"
}

// This is test case 01.
run "validate_network_tier" {
  // Replacing the command value with command = plan instructs Terraform to not create new infrastructure for this run block.
  // This allows test authors to validate logical operations and custom conditions within their infrastructure in a process analogous to unit testing.
  command = plan

  variables {
    address_name = "my-eip-address"
    network_tier = "PREMIUM"
  }

  assert {
    condition     = google_compute_address.external_address.network_tier == "PREMIUM"
    error_message = "[ERROR]: network tier should be premium"
  }
}
