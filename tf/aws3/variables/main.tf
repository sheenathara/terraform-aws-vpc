
resource "aws_instance" "apptest" {
  instance_type = var.type
  ami           = "ami-0aa7d40eeae50c9a9"
  tags = {
    Name = var.instance_name
  }
}

output "apptest" {
  value = aws_instance.apptest.id
}
