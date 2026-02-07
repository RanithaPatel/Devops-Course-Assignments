provider "aws" {
  region = var.region
}

resource "aws_security_group" "app_sg" {
  name = "flask-express-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 5000
    to_port     = 5000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "app_server" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2
  instance_type = var.instance_type
  key_name      = var.key_name

  security_groups = [aws_security_group.app_sg.name]

  user_data = file("user_data.sh")

  tags = {
    Name = "Flask-Express-Single-EC2"
  }
}
