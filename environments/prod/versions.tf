terraform {
  required_version = ">= 1.2"

  required_providers {

    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5"
    }

    github = {
      source  = "integrations/github"
      version = "6.11.1"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "6.41.0"
    }

  }

}

