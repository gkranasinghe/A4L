provider "aws" {
  region                   = var.aws_region
  profile                  = "A4L"
  shared_credentials_files = ["/home/gk/.aws/credentials_A4L"]

  assume_role {
    role_arn = "arn:aws:iam::${var.aws_account_id}:role/terraform_admin_access"
  }

  # assume_role {
  #   role_arn = "arn:aws:iam::${lookup(var.aws_account_id, var.tag_environment)}:role/MYASSUMEROLE"
  # }
}
