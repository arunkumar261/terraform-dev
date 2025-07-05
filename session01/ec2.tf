resource "aws_instance" "ec2_instance" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop_all.id]

  tags = {
    Name = "Hello Terrafoem"
  }
}

resource "aws_security_group" "roboshop_all" {
    name        = var.sg-name
    description = var.sg-description
        #   vpc_id      = "${aws_vpc.main.id}"

    ingress {
      # TLS (change to whatever ports you need)
      from_port   = 0
      to_port     = 0
      protocol    = "tcp"
      # Please restrict your ingress to only necessary IPs and ports.
      # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
      cidr_blocks = var.sg-cidr_blocks
    }

    egress {
      from_port       = 0
      to_port         = 0
      protocol        = "-1"
      cidr_blocks     = ["0.0.0.0/0"]
      # prefix_list_ids = ["pl-12c4e678"]
    }

    tags = {
        Name = "roboshop_all_tags"
    }
}
