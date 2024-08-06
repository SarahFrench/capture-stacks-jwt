
identity_token "hcp" {
  audience = [ "hcp.workload.identity" ]
}

deployment "development" {
    inputs = {
        jwt = identity_token.hcp.jwt
    }
}
