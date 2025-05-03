provider "aws" {
    region = "ap-south-1"
}
#tfsec:ignore:aws-s3-enable-bucket-logging 
resource "aws_s3_bucket" "infra-bucket-test"{
    bucket = "ccom-cloud-infra-demo"
}

# resource "aws_s3_bucket_ownership_controls" "infra-bucket-ownership" {
#   bucket = aws_s3_bucket.example.id
#   rule {
#     object_ownership = "BucketOwnerPreferred"
#   }
# }

# resource "aws_s3_bucket_acl" "infra-bucket-acl" {
#   depends_on = [aws_s3_bucket_ownership_controls.infra-bucket-ownership]

#   bucket = aws_s3_bucket.infra-bucket.id
#   acl    = "private"
# }

# resource "aws_s3_bucket_public_access_block" "infra-bucket-access" {
#   bucket = aws_s3_bucket.example.id

#   block_public_acls       = true
#   block_public_policy     = true
#   ignore_public_acls      = true
#   restrict_public_buckets = true
# }

# resource "aws_s3_bucket_versioning" "infra-bucket-versioning" {
#   bucket = aws_s3_bucket.example.id
#   versioning_configuration {
#     status = "Enabled"
#   }
# }

# resource "aws_kms_key" "s3-infra-bucket-kms" {
#   description             = "This key is used to encrypt bucket objects"
#   enable_key_rotation     = true
#   deletion_window_in_days = 7
# }

# resource "aws_s3_bucket_server_side_encryption_configuration" "s3-infra-bucket-sse" {
#   bucket = aws_s3_bucket.infra-bucket.id

#   rule {
#     apply_server_side_encryption_by_default {
#       kms_master_key_id = aws_kms_key.s3-bucket-kms.arn
#       sse_algorithm     = "aws:kms"
#     }
#   }
# }
