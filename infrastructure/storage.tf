resource "aws_s3_bucket" "buckets_lake" {
  count  = length(var.bucket_names)
  bucket = "${var.Project}-${var.Cloud}-${var.bucket_function[0]}-${var.bucket_names[count.index]}"
  acl    = "private"

  tags = var.tags

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

}