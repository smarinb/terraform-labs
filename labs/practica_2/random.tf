resource "random_string" "sufijo" {
  length  = 4
  count   = 5
  special = false
  upper   = false
  numeric = false
}
