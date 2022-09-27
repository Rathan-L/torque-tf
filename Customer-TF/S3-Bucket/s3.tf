variable "aws_region" {
    type    = string
    default = "us-west-2"
}

variable "input_bucket_name" {
 type = string
 default = "rathans-bucket"
}

resource "aws_s3_bucket" "bucket" {
    bucket = var.input_bucket_name
    force_destroy = true  
    acl = "private"

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
