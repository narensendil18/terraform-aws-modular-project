terraform {
  backend "s3" {
    bucket       = "naren-terraform-state-2026"
    key          = "dev/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}