provider "aws" {
  region = "us-east-1"
}
data "aws_ami" "ami" {
  most_recent = true
  owners = ["amazon"]
  filter {
    name = "name"
    values = ["al2023-ami-2023.*-kernel-6.18-x86_64"]
  }
}
data "aws_security_group" "sgq" {
  name= "demo_sg"
}

resource "aws_instance" "ec1" {
  ami = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  key_name = "nasa"
  vpc_security_group_ids = [ data.aws_security_group.sgq.id ]
  tags = {
  Owner = "hcp",
  CostCenter = "main_office",
  Environment = "dev"
  }
}
