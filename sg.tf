#Resource -Security_Group
resource "aws_security_group" "aws-SG-east-1" {
  description = "aws-SG-east-1"
  name        = "aws-SG-east-1-${terraform.workspace}"
  vpc_id      = aws_vpc.aws-vpc-east-1.id
  tags = {
    Name = "aws-SG-east-1-${terraform.workspace}"
  }
  ingress {
    description = "Allow Port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Allow Port 443"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Allow Port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "All ports and ips"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
#Resource -Security_Group
resource "aws_security_group" "aws-SG-east-2" {
  description = "aws-SG-east-2"
  name        = "aws-SG-east-2-${terraform.workspace}"
  vpc_id      = aws_vpc.aws-vpc-east-2.id
  provider    = aws.aws-east-2
  tags = {
    Name = "aws-SG-east-2-${terraform.workspace}"
  }
  ingress {
    description = "Allow Port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Allow Port 443"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Allow Port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "All ports and ips"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
#Resource -Security_Group
resource "aws_security_group" "aws-SG-west-1" {
  description = "aws-SG-west-1"
  name        = "aws-SG-west-1-${terraform.workspace}"
  vpc_id      = aws_vpc.aws-vpc-west-1.id
  provider    = aws.aws-west-1
  tags = {
    Name = "aws-SG-west-1-${terraform.workspace}"
  }
  ingress {
    description = "Allow Port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Allow Port 443"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Allow Port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "All ports and ips"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
