
output "public_ip" {
  value = aws_instance.myapp.public_ip #something not sure??
  
  # hint: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
}

