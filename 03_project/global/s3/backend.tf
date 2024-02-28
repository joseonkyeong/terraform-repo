terraform {
    backend "s3"{
      bucket = "aws11-terraform-state"
      region = "ap-northeast-2"
      key = "global/s3/terraform.tfstate"
      dynamodb_table = "aws11-terraform-locks"
      encrypt       = true
    }
}