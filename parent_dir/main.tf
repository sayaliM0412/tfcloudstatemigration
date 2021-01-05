# Terraform configuration
terraform {
  backend "remote" {
    hostname      = "app.terraform.io"
    organization  = "TrialRun"

    workspaces {
      prefix = "parent-tfcloudstatemigration-"
    }
  }
}

resource "aws_s3_bucket_object" "terraform_s3_bucket_fun_parent_dir" {
  bucket = "giggles"
  key = "somekey"

}
output "bucket_environment" {
  value = "lkasjdlkashjlklife"
}
