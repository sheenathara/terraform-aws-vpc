variable "instance_type" {
  type = string
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "main"
  }
}

resource "aws_instance" "main" {
  instance_type = var.instance_type
  ami           = "ami-0aa7d40eeae50c9a9"
  subnet_id = aws_subnet.main.id
  tags = {
    Name = "main"
  }
}
