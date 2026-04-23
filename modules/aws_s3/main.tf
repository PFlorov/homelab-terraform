resource "aws_s3_bucket" "tf_test_bucket" {
  bucket = var.bucket

  force_destroy = var.force_destroy
  tags = var.tags
}
