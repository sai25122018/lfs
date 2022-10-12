#Resource Block- Route Table
resource "aws_route_table" "aws-Main_RT-east-1" {
  vpc_id = aws_vpc.aws-vpc-east-1.id
  tags = {
    Name = "aws-Main_RT-east-1-${terraform.workspace}"
  }
}
resource "aws_route_table" "aws-Main_RT-east-2" {
  vpc_id   = aws_vpc.aws-vpc-east-2.id
  provider = aws.aws-east-2
  tags = {
    Name = "aws-Main_RT-east-2-${terraform.workspace}"
  }
}
resource "aws_route_table" "aws-Main_RT-west-1" {
  vpc_id   = aws_vpc.aws-vpc-west-1.id
  provider = aws.aws-west-1
  tags = {
    Name = "aws-Main_RT-west-1-${terraform.workspace}"
  }
}
#Resource Block-Internet_Access
resource "aws_route" "aws-route-east-1" {
  route_table_id         = aws_route_table.aws-Main_RT-east-1.id
  gateway_id             = aws_internet_gateway.aws-IGW-east-1.id
  destination_cidr_block = "0.0.0.0/0"
}
resource "aws_route" "aws-route-east-2" {
  route_table_id         = aws_route_table.aws-Main_RT-east-2.id
  provider               = aws.aws-east-2
  gateway_id             = aws_internet_gateway.aws-IGW-east-2.id
  destination_cidr_block = "0.0.0.0/0"
}
resource "aws_route" "aws-route-west-1" {
  route_table_id         = aws_route_table.aws-Main_RT-west-1.id
  provider               = aws.aws-west-1
  gateway_id             = aws_internet_gateway.aws-IGW-west-1.id
  destination_cidr_block = "0.0.0.0/0"
}
#Resource Block -Subnets_Association
resource "aws_route_table_association" "aws_subnet1_east-1" {
  subnet_id      = aws_subnet.aws-subnet1-east-1.id
  route_table_id = aws_route_table.aws-Main_RT-east-1.id
}
resource "aws_route_table_association" "aws_subnet2_east-1" {
  subnet_id      = aws_subnet.aws-subnet2-east-1.id
  route_table_id = aws_route_table.aws-Main_RT-east-1.id
}
resource "aws_route_table_association" "aws_subnet3_east-1" {
  subnet_id      = aws_subnet.aws-subnet3-east-1.id
  route_table_id = aws_route_table.aws-Main_RT-east-1.id
}
#Resource Block -Subnets_Association
resource "aws_route_table_association" "aws_subnet1_east-2" {
  subnet_id      = aws_subnet.aws-subnet1-east-2.id
  provider       = aws.aws-east-2
  route_table_id = aws_route_table.aws-Main_RT-east-2.id
}
resource "aws_route_table_association" "aws_subnet2_east-2" {
  subnet_id      = aws_subnet.aws-subnet2-east-2.id
  provider       = aws.aws-east-2
  route_table_id = aws_route_table.aws-Main_RT-east-2.id
}
resource "aws_route_table_association" "aws_subnet3_east-2" {
  subnet_id      = aws_subnet.aws-subnet3-east-2.id
  provider       = aws.aws-east-2
  route_table_id = aws_route_table.aws-Main_RT-east-2.id
}
#Resource Block -Subnets_Association
resource "aws_route_table_association" "aws_subnet1_west-1" {
  subnet_id      = aws_subnet.aws-subnet1-west-1.id
  provider       = aws.aws-west-1
  route_table_id = aws_route_table.aws-Main_RT-west-1.id
}
resource "aws_route_table_association" "aws_subnet2_west-1" {
  subnet_id      = aws_subnet.aws-subnet2-west-1.id
  provider       = aws.aws-west-1
  route_table_id = aws_route_table.aws-Main_RT-west-1.id
}
