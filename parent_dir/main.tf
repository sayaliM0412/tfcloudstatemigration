# Terraform configuration
terraform {
  backend "remote" {
    hostname      = "app.terraform.io"
    organization  = "TrialRun"

    workspaces {
      prefix = "parent-tfcloudstatemigration"
    }
  }
}

resource "aws_s3_bucket" "terraform_s3_bucket_fun_parent_dir" {
  bucket = "${terraform.workspace}-giggles"
}
output "bucket_environment" {
  value = "${terraform.workspace}-lkasjdlkashjlklife"
}
