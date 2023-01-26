provider "aws"{
    region="us-east-1"
}

resource "aws_instance" "server" {
  ami           = "ami-00874d747dde814fa"
  instance_type = "t2.micro"
  subnet_id="subnet-0210c444f9d629071"
  security_groups=["sg-0a611fc501d40452d"]
  


  tags = {
    Name = "terraform-server"
  }
}
