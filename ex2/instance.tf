resource "aws_instance" "kops" {
ami = var.AMIS[var.REGION]
  instance_type = "t2.micro"
  availability_zone = var.ZONE1
  key_name               = "kops-key"
  vpc_security_group_ids = ["sg-0f36b37c4df54e163"]
  tags = {
    Name = "kops instance"
  }

}