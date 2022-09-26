variable "aws_region" {
    type    = string
    default = "us-west-2"
}

inputs:
  bucket_name:
    type: string
    default: bucket-name

resource "aws_s3_bucket" "bucket" {
    bucket = bucket_name
    force_destroy = true  
    acl = "public-read-write"

    tags = {
    Name        = "My bucket"
    }
}

output "bucket_name" {
    value = aws_s3_bucket.bucket.bucket
}

provider "aws" {
    region  = var.aws_region
}

