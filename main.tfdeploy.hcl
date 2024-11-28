identity_token "hcp" {
  audience = ["api://AzureADTokenExchange"]
}

deployment "development" {
  inputs = {
    jwt = identity_token.hcp.jwt
  }
}
