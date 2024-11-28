variable "jwt" {
  type = string
}

resource "tfcoremock_simple_resource" "resource" {
  string = var.jwt
}
