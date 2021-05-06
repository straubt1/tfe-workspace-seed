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

resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "_%@"
}
output "test" {
  value = jsondecode(random_password.password.id)
}
