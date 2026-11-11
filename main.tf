provider "aws" {
  region = "us-east-1"
}
module "ec2"{
  source = "./module/ec2"
  itype = "t3.micro"
  kname = "nasa"
}
