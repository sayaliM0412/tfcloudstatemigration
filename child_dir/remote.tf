data "terraform_remote_state" "parent_dir" {
  backend = "s3"

  config = {
    bucket = "mm-bucket-giggles"
    key    = "env:/${terraform.workspace}/parent_dir/terraform.tfstate"
    region = "us-west-2"
  }
}

