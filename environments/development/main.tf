locals {
  credentials_file_path = var.credentials_path
}

provider "google" {
  credentials = file(local.credentials_file_path)
}

provider "google-beta" {
  credentials = file(local.credentials_file_path)
}

module "project-factory" {
  source  = "terraform-google-modules/project-factory/google"
  random_project_id       = true
  name                    = "default-project"
  org_id                  = var.organization_id
  billing_account         = var.billing_account
  credentials_path        = local.credentials_file_path

  /* activate_api_identities = [{ */
  /*   api = "healthcare.googleapis.com" */
  /*   roles = [ */
  /*     "roles/healthcare.serviceAgent", */
  /*     "roles/bigquery.jobUser", */
  /*   ] */
  /* }] */
}
