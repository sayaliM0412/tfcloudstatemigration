terraform {
  required_version = "0.13.4"

  backend "s3" {
    region = "us-west-2"
    bucket = "tf-cloud-trial"
    # bucket = "mm-tf-cloud-giggles-test"
    key    = "parent_dir/terraform.tfstate"
  }
}

provider "aws" {
  region = "us-west-2"
  version = "3.22.0"
}
