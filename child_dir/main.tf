resource "aws_s3_bucket" "terraform_s3_bucket_fun" {
  bucket = "${data.terraform_remote_state.parent_dir.outputs.bucket_environment}-giggles-child-dir"
}

