

output "bucket_environment" {
  value = "${terraform.workspace}-lkasjdlkashjlkdahkjdf"
}

resource "aws_s3_bucket" "terraform_s3_bucket_fun_parent_dir" {
  bucket = "${terraform.workspace}-giggles"
}