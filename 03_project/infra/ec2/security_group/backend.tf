terraform {
    backend "s3"{
      bucket = "aws11-terraform-state"
      region = "ap-northeast-2"
      key = "infra/ec2/security_group/terraform.tfstate"
      dynamodb_table = "aws11-terraform-locks"
      encrypt       = true
    }
}