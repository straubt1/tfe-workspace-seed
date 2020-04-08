variable "last_ws_mod_date" {
  default = ""
}

variable "pet_prefix" {
  default = ""
}

resource "random_pet" "main" {
  length = 3
  prefix = var.pet_prefix
}

output "date" {
  value = var.last_ws_mod_date
}
