#Resource Block -Instance
resource "aws_instance" "aws-instance-east-1" {
  ami                    = data.aws_ami.amzlinux1.id
  instance_type          = "t2.micro"
  key_name               = "Provisioner_Key"
  subnet_id              = aws_subnet.aws-subnet1-east-1.id
  vpc_security_group_ids = [aws_security_group.aws-SG-east-1.id]
  count                  = 2
  user_data              = <<EOF
		sudo yum update -y
		sudo amazon-linux-extras install nginx1
		sudo systemctl enable nginx
		sudo systemctl start nginx
		sudo systemctl status nginx
	EOF
  tags = {
    Name = "aws-instance-east-1-${terraform.workspace}"
  }
}
resource "aws_instance" "aws-instance-east-2" {
  ami                    = data.aws_ami.amzlinux2.id
  provider               = aws.aws-east-2
  instance_type          = "t2.small"
  key_name               = "NewEnthusiatickp"
  subnet_id              = aws_subnet.aws-subnet1-east-2.id
  vpc_security_group_ids = [aws_security_group.aws-SG-east-2.id]
  count                  = 1
  user_data              = <<EOF
		sudo yum update -y
		sudo amazon-linux-extras install nginx1
		sudo systemctl enable nginx
		sudo systemctl start nginx
		sudo systemctl status nginx
	EOF
  tags = {
    Name = "aws-instance-east-2-${terraform.workspace}"
  }
}
resource "aws_instance" "aws-instance-west-1" {
  ami                    = data.aws_ami.amzlinux3.id
  instance_type          = "t2.large"
  provider               = aws.aws-west-1
  key_name               = "California_Key"
  subnet_id              = aws_subnet.aws-subnet1-west-1.id
  vpc_security_group_ids = [aws_security_group.aws-SG-west-1.id]
  count                  = 1
  user_data              = <<EOF
		sudo yum update -y
		sudo amazon-linux-extras install nginx1
		sudo systemctl enable nginx
		sudo systemctl start nginx
		sudo systemctl status nginx
	EOF
  tags = {
    Name = "aws-instance-west-1-${terraform.workspace}"
  }
}
