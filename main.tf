terraform {
  required_version = ">= 0.11.0"
}

provider "aws" {
  region = var.aws_region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "ubuntu" {
  ami               = var.ami_id
  instance_type     = var.instance_type
  availability_zone = "${var.aws_region}a"

  tags = {
    Name = format ("${var.name}%s", formatdate("YYYYMMDD-hhmm", timeadd(timestamp(), "9h")))
    Creation = formatdate("YYYY/MM/DD, hh:mm:ss", timeadd(timestamp(), "9h"))
  }
}
