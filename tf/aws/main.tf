
resource "aws_instance" "app1" {
  instance_type = "t2.nano"
  ami           = "ami-0aa7d40eeae50c9a9"
  tags = {
    "team"       = "app-team"
    "costcentre" = "engineering"
  }
}

#resource "aws_instance" "app2" {
#  instance_type = "t2.nano"
#  ami           = "ami-0aa7d40eeae50c9a9"
#  tags = {
#    "team" = "app-team"
#  }
#}

#resource "aws_instance" "app3" {
#  instance_type = "t2.nano"
#  ami           = "ami-0aa7d40eeae50c9a9"
#  tags = {
#    "costcentre" = "engineering"
#  }
#}

resource "aws_s3_bucket" "iac-bucket" {
  bucket = "iac-main-bucket-2"
}

# resource "aws_s3_bucket_acl" "example_bucket_acl" {
#   bucket = aws_s3_bucket.iac-bucket.id
#   acl    = "private"
# }

output "app1" {
  value = aws_instance.app1.id
}

#output "app2" {
#  value = aws_instance.app2.id
#}

#output "app3" {
#  value = aws_instance.app3.id
#}
