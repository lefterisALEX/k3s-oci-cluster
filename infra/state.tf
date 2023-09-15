terraform {
  backend "s3" {
    bucket = "terraform-state-general"
    key    = "k3s-oci/infra/terraform.tfstate"
    region = "eu-central-1"
  }
}