provider "aws"{
    region="us-east-1"
    access_key = "AKIAR4HMVUUYSNFHCC53"
    secret_key = "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"

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
