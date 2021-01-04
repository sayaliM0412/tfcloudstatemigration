

output "bucket_environment" {
  value = terraform.workspace
}

resource "aws_s3_bucket" "terraform_s3_bucket_fun_parent_dir" {
  bucket = "${terraform.workspace}-giggles"
}