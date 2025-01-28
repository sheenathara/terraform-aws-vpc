variable "instance_name" {
  type = string
  description = "name of the instance"
  default = "mytestvm"
}

variable "type" {
  type        = string
  description = "AWS Region required by Terraform AWS Provider"
  default     = "t2.nano"
  }
