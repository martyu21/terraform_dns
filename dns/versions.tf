terraform {
  required_providers {
    windns = {
      source = "nrkno/windns"
      version = "1.0.5"
    }
    vault = {
        source = "hashicorp/vault"
        version = "3.25.0"
    }
  }
}

