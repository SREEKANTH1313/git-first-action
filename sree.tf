provider "aws"{
    region="us-east-1"

}

resource "aws_instance" "server" {
  ami           = "ami-00874d747dde814fa"
  instance_type = "t2.micro"
  subnet_id="subnet-0f5e1db05acd752b2 "
  security_groups=["sg-0ad5ff42b16ca530b"]
  


  tags = {
    Name = "terraform-server"
  }
}
