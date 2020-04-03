variable "last_ws_mod_date" {
  default = ""
}

resource "random_pet" "main" {
  length = 3
}

output "date" {
  value = var.last_ws_mod_date
}
 
#
