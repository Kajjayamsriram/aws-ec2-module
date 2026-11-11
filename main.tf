provider "aws" {
  region = "us-east-1"
}
module ""{
  source = "./module/ec2"
  itype = "t3.micro"
  kname = "nasa"
}
