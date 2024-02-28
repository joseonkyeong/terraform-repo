provider "aws" {
  region = "ap-northeast-2"
}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnet" "default" {
  filter {
  name = "vpc-id"
  values = [data.aws.default.id]
  }
}

