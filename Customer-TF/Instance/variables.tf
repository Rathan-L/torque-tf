variable "name" {
  type    = string
  default = "My Instance"
}

variable "db_user" {
  type    = string
  sensitive = true
  default = "dbuser"
}

variable "db_pass" {
  type    = string
  sensitive = true
  default = "dbpass"
}

variable "s3_bucket" {
  type    = string
  default = "my-app-bucket"
}

variable "aws_region" {
    type    = string
    default = "us-west-2"
}
