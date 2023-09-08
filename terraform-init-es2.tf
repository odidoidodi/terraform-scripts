provider "aws" {
  region = "us-east-1"

}

resource "aws_instance" "intro" {
  ami                    = "ami-053b0d53c279acc90"
  instance_type          = "t2.micro"
  key_name               = "kops-key"
  vpc_security_group_ids = ["sg-0f36b37c4df54e163"]
  tags = {
    name = "kops instance"
  }

}
