data "terraform_remote_state" "parent_dir" {
  backend = "s3"

  config = {
    # bucket = "mm-tf-cloud-giggles-test"
    bucket = "tf-cloud-trial"
    key    = "parent_dir/terraform.tfstate"
    region = "us-west-2"
  }
}