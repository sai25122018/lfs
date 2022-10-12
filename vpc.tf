#Resource Block-VPC
resource "aws_vpc" "aws-vpc-east-1" {
  cidr_block = "10.1.0.0/16"
  tags = {
    name = "aws-vpc-east-1-${terraform.workspace}"
  }
}
resource "aws_vpc" "aws-vpc-east-2" {
  cidr_block = "192.168.0.0/16"
  provider   = aws.aws-east-2
  tags = {
    name = "aws-vpc-east-2-${terraform.workspace}"
  }
}
resource "aws_vpc" "aws-vpc-west-1" {
  cidr_block = "172.16.0.0/16"
  provider   = aws.aws-west-1
  tags = {
    name = "aws-vpc-west-1-${terraform.workspace}"
  }
}
