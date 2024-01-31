terraform {
  backend "s3" {
    bucket = "k1-state-store-bbkubes-1-juyu2c"
    key    = "terraform/vault/terraform.tfstate"

    region  = "us-east-2"
    encrypt = true
  }
  required_providers {
    vault = {
      source = "hashicorp/vault"
    }
  }
}

provider "vault" {
  skip_tls_verify = "true"
}
