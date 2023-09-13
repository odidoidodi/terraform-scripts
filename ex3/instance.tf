resource "aws_key_pair" "test-key" {
  key_name = "testkey"
  public_key = file("testkey.pub")
}

resource "aws_instance" "kops" {
  ami = var.AMIS[var.REGION]
  instance_type = "t2.micro"
  availability_zone = var.ZONE1
  key_name               = aws_key_pair.test-key.key_name
  vpc_security_group_ids = ["sg-0f36b37c4df54e163"]
  tags = {
    Name = "kops instance"
  }
provisioner "file" {
  source = "web.sh"
  destination = "/tmp/web.sh"
}

  provisioner "remote-exec" {
    inline = [
    "chmod u+x /tmp/web.sh"]
  }

connection {
  user = var.USER
  private_key = file("testkey")
  host = self.public_ip
}
}