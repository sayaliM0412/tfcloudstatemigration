provider "aws" {
  region = var.region
}


variable "region" {
}

# Terraform configuration
terraform {
  backend "remote" {
    hostname      = "app.terraform.io"
    organization  = "TrialRun"

    workspaces {
      prefix = "child-tfcloudstatemigration"
    }
  }
}

resource "aws_s3_bucket" "terraform_s3_bucket_fun" {
  bucket = "${data.terraform_remote_state.parent_dir.outputs.bucket_environment}-giggles-child-dir"
}

