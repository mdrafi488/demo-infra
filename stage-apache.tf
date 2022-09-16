resource "aws_security_group" "stage-apache-sg" {
  name        = "stage-apache-sg"
  description = "Admin with ssh"
  vpc_id      = "vpc-049f215e85a9ff2c2"

  ingress {
    description      = "admin from ssh"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "Enduser from http"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "stage-apache-sg"
  }
}

/* resource "aws_instance" "apache" {
  ami           = "ami-0b89f7b3f054b957e"
  instance_type = "t2.micro"
  vpc_security_group_ids=[aws_security_group.apache-sg.id]
  subnet_id = "subnet-072762878afe76c41"
  key_name = aws_key_pair.demo.id

  tags = {
    Name = "stage-apache"
  }
} */


