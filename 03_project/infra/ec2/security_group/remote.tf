data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    region = "ap-northeast-2"
    bucket = "aws11-terraform-state"
    key = "infra/vpc/terraform.tfstate"
  }
}