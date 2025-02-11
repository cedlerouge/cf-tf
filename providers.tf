terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5"
    }
  }
}

provider "cloudflare" {
  email = var.cloudflare_email_address
  api_token = var.cloudflare_api_token
}
