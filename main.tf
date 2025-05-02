provider "aws" {
    region = "ap-south-1"
}
#tfsec:ignore:aws-s3-enable-bucket-logging 
resource "aws_s3_bucket" "infra-bucket"{
    bucket = "ccom-cloud-infra-test"
}
