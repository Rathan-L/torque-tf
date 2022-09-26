
output "public_dns" {
#  value = aws_instance.myapp.public #something not sure??
  value = try(aws_instance.this[0].public_dns, aws_spot_instance_request.this[0].public_dns, "")

  # hint: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
}

