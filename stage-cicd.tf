resource "aws_security_group" "stage-cicd-sg1" {
  name        = "stage-cicd-sg1"
  description = "Admin with ssh"
  vpc_id      = "vpc-049f215e85a9ff2c2"

  ingress {
    description      = " admin from ssh "
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    description      = " Enduser from http "
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
    Name = "stage-cicd-sg1"
  }
}

resource "aws_instance" "cicd1" {
  ami           = "ami-0b89f7b3f054b957e"
  instance_type = "t2.micro"
  vpc_security_group_ids=[aws_security_group.stage-cicd-sg1.id]
  subnet_id = "subnet-072762878afe76c41"
  key_name = aws_key_pair.demo3.id

  user_data              = <<-EOF
wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum upgrade -y
amazon-linux-extras install java-openjdk11 -y
yum install jenkins -y
systemctl start jenkins
systemctl enable jenkins
              EOF

  tags = {
    Name = "stage-cicd1"
  }
} 


