# Generate a change in the workspace
resource "random_pet" "main" {
  keepers = {
    always = timestamp()
  }
  count  = 100
  length = 10
}
