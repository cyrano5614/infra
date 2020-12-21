terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "rois-theorem"

    workspaces {
      name = "development-"
    }
  }
}
