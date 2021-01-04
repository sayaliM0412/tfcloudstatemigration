terraform {
  required_version = "0.14.3"

  backend "s3" {
    region = "us-west-2"
    bucket = "tf-cloud-trial"
    # bucket = "mm-tf-cloud-giggles-test"
    # key    = "parent_dir/terraform.tfstate"
    key    = "child_dir/terraform.tfstate"
  }
}

provider "aws" {
  version = "3.22.0"
}
