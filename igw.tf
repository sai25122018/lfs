#Resource Block -Internet-Gateway
resource "aws_internet_gateway" "aws-IGW-east-1" {
  vpc_id = aws_vpc.aws-vpc-east-1.id
  tags = {
    Name = "aws-IGW-east-1-${terraform.workspace}"
  }
}
resource "aws_internet_gateway" "aws-IGW-east-2" {
  vpc_id   = aws_vpc.aws-vpc-east-2.id
  provider = aws.aws-east-2
  tags = {
    Name = "aws-IGW-east-2-${terraform.workspace}"
  }
}
resource "aws_internet_gateway" "aws-IGW-west-1" {
  vpc_id   = aws_vpc.aws-vpc-west-1.id
  provider = aws.aws-west-1
  tags = {
    Name = "aws-IGW-west-1-${terraform.workspace}"
  }
}
