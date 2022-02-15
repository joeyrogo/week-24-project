resource "aws_s3_bucket" "demos3" {
  versioning {
    enabled = true
  }
    bucket = "${var.bucket_name}" 
    acl = "${var.acl_value}"   
  
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "aws:kms"
      }
    }
  }
}
