#Resource Block-Subnet
resource "aws_subnet" "aws-subnet1-east-1" {
  vpc_id                  = aws_vpc.aws-vpc-east-1.id
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  cidr_block              = "10.1.1.0/24"
  tags = {
    Name = "aws-subnet1-east-1-${terraform.workspace}"
  }
}
resource "aws_subnet" "aws-subnet2-east-1" {
  vpc_id                  = aws_vpc.aws-vpc-east-1.id
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
  cidr_block              = "10.1.2.0/24"
  tags = {
    Name = "aws-subnet2-east-1-${terraform.workspace}"
  }
}
resource "aws_subnet" "aws-subnet3-east-1" {
  vpc_id                  = aws_vpc.aws-vpc-east-1.id
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = true
  cidr_block              = "10.1.3.0/24"
  tags = {
    Name = "aws-subnet3-east-1-${terraform.workspace}"
  }
}
resource "aws_subnet" "aws-subnet1-east-2" {
  vpc_id                  = aws_vpc.aws-vpc-east-2.id
  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = true
  provider                = aws.aws-east-2
  cidr_block              = "192.168.1.0/24"
  tags = {
    Name = "aws-subnet1-east-2-${terraform.workspace}"
  }
}
resource "aws_subnet" "aws-subnet2-east-2" {
  vpc_id                  = aws_vpc.aws-vpc-east-2.id
  availability_zone       = "us-east-2b"
  map_public_ip_on_launch = true
  provider                = aws.aws-east-2
  cidr_block              = "192.168.2.0/24"
  tags = {
    Name = "aws-subnet2-east-2"
  }
}
resource "aws_subnet" "aws-subnet3-east-2" {
  vpc_id                  = aws_vpc.aws-vpc-east-2.id
  availability_zone       = "us-east-2c"
  map_public_ip_on_launch = true
  provider                = aws.aws-east-2
  cidr_block              = "192.168.3.0/24"
  tags = {
    Name = "aws-subnet3-east-2-${terraform.workspace}"
  }
}
resource "aws_subnet" "aws-subnet1-west-1" {
  vpc_id                  = aws_vpc.aws-vpc-west-1.id
  provider                = aws.aws-west-1
  availability_zone       = "us-west-1a"
  map_public_ip_on_launch = true
  cidr_block              = "172.16.1.0/24"
  tags = {
    Name = "aws-subnet1-west-1-${terraform.workspace}"
  }
}
resource "aws_subnet" "aws-subnet2-west-1" {
  vpc_id                  = aws_vpc.aws-vpc-west-1.id
  provider                = aws.aws-west-1
  availability_zone       = "us-west-1b"
  map_public_ip_on_launch = true
  cidr_block              = "172.16.2.0/24"
  tags = {
    Name = "aws-subnet2-west-1-${terraform.workspace}"
  }
}
