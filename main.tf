variable "test_var" {
  description  = "Dummy variable that can be used to force a variable error."
  type         = string
  default      = 10
}

# Generate a change in the workspace
resource "random_pet" "main" {
  keepers = {
    always = timestamp()
  }
  count  = 100
  length = var.test_var
}
