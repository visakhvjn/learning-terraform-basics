terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
    token = var.github_token
}

resource "github_repository" "tf_repository" {
  name        = "tf_repository"
  description = "My awesome repository by terraform"

  visibility = "public"
}