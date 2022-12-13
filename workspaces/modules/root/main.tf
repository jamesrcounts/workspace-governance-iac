resource "tfe_organization" "org" {
  email = "jamesrcounts@outlook.com"
  name  = var.organization_name
}

resource "tfe_oauth_client" "github" {
  organization     = tfe_organization.org.name
  api_url          = "https://api.github.com"
  http_url         = "https://github.com"
  oauth_token      = var.github_pat
  service_provider = "github"
}
