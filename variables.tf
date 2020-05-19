variable "aws_region" {
  description = "AWS region"
  default     = "ap-northeast-2"
}
  
variable "ami_id" {
  description = "ID of the AMI to provision. Default is Ubuntu 14.04 Base Image"
  default     = "ami-0ab7ae14fe6a99093"
}

variable "instance_type" {
  description = "type of EC2 instance to provision."
  default     = "t2.large"
}

variable "name" {
  description = "name to pass to Name tag"
  default     = "SNOW_DEMO-"
}
