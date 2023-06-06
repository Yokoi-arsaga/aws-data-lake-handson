terraform {
  required_version = "1.4.6"

  backend "s3" {
    bucket = "data-lake-handson-terraform"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.1.0"
    }
  }
}