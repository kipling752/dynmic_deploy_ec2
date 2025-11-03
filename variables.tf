variable "instance_type" {
  type        = string
  description = "set aws instance type"
  default     = "t3.micro"
}

variable "aws_common_tag" {
  type        = map(any)
  description = "Set aws tag"
  default = {
    Name = "ec2-devops-systoker"
  }
}