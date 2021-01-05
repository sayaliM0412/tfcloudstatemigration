terraform {
  required_version = "0.13.4"
}

variable "region" {
}

provider "aws" {
  region  = var.region
  version = "3.22.0"
}
