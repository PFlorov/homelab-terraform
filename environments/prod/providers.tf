provider "cloudflare" {

}


provider "github" {

  owner = var.github_owner

}

provider "aws" {
  region  = var.region
  profile = "dev"
}
