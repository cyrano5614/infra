terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "rois-theorem"

    workspaces {
      prefix = "infra-"
    }
  }
}
