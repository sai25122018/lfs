#Provider Block
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}
provider "aws" {
  region  = "us-east-2"
  profile = "default"
  alias   = "aws-east-2"
}
provider "aws" {
  region  = "us-west-1"
  profile = "default"
  alias   = "aws-west-1"
  assume_role {
    role_arn = "arn:aws:iam::345630149727:role/Terraform_Git_Cloud_Cross_account_role"
  }
}
