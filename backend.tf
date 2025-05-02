terraform {
  backend "s3" {
    bucket = "ccom-infra-tf-state" 
    key    = "infra/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}