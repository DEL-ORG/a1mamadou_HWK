provider "aws" {
  region = "var.aws_region" # Replace with your desired AWS region
}

terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

locals{
    iam_user_name = "s3-study"
    bucket_name   = "mamadou1"
    aws_region    = "us-east-1"

}

module "s3_bucket" {
  source        = "../../module2/s3_bucket" # Ensure this matches your directory
  iam_user_name = local.s3-study
  bucket_name   = local.mamadou1
  aws_region    = local.us-east-1
}


# module "iam_user" {
#   source = "../../iam.tf"
#   iam_user_name = local.s3-study
#   bucket_name   = local.mamadou1
#   aws_region  = local.us-east-1
# }
