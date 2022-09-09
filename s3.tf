resource "aws_s3_bucket" "user_data" {
  bucket = "userdata-${lower(terraform.workspace)}"
  # acl    = "private"
}