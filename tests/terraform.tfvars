/*
In addition to specifying variable values via test files, the Terraform test command also supports the other typical mechanisms for specifying variable values.
You can specify values for variables across all tests with the Command line and with Variable definition files. As with the main configuration direction, Terraform
will automatically load any variables defined in the automatic variable files within a test directory.
The automatic variable files are terraform.tfvars, terraform.tfvars.json, and any files that end with .auto.tfvars or .auto.tfvars.json.

Note: Variable values loaded from the automatic variable files within a test directory will only apply to tests also defined within the same test directory.
*/

project_id = "tidal-outlook-488409-e6"
