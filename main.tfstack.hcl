required_providers {
  tfcoremock = {
    source  = "hashicorp/tfcoremock"
    version = "0.2.0"
  }
}

variable "jwt" {
  type = string
}

provider "tfcoremock" "default" {
  config {
    use_only_state = true
  }
}

component "jwt" {
  source = "./main"

  inputs = {
    jwt = var.jwt
  }

  providers = {
    tfcoremock = provider.tfcoremock.default
  }
}
