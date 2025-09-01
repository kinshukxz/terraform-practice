#key pair
resource "aws_key_pair" "deployer" {
  key_name   = "kinshuk-key"
  public_key = file("/Users/kinshuksrivastava/Desktop/terraform-practice/kinshuk-key.pub")
}

# Deafault VPC 

resource "aws_default_vpc" "Default" {

}

resource "aws_security_group" "security-group-kinshuk" {
  name        = "allow ports"
  description = "this SG is to open Ports for EC2 instances"
  vpc_id      = aws_default_vpc.Default.id #interpolation of the default VPC ID

  ingress {
    description = "This is for SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }
  ingress {
    description = "This is for HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 8000
    to_port     = 8000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "This is for outgoing internet traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_instance" "kinshuk-ec2" {
  ami           = "ami-084568db4383264d4"
  instance_type = "t2.micro"
  region        = "us-east-1"
  user_data     = file("install_nginx.sh")

  key_name        = aws_key_pair.deployer.key_name
  security_groups = [aws_security_group.security-group-kinshuk.name]

  root_block_device {
    volume_size = 15
    volume_type = "gp3"
  }

  tags = {
    Name = "Kinshuk-EC2-haha"
  }
}

