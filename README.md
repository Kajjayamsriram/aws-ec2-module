# aws-ec2-module
usage of terraform ec2 module from github

## Reference to the module from local TF code
```
module "ec2"{
    source = "git::https://github.com/Kajjayamsriram/aws-ec2-module.git"
}
```

## module call for ec2
```
module "ec2"{
  source = "./module/ec2"
  itype = "t3.micro"
  kname = "nasa"
}
```
