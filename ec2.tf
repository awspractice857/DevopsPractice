resource "aws_instance" "APP" {
  ami                         = "ami-0becdc92395f41727"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  key_name                    = "terraform"
  vpc_security_group_ids      = [aws_security_group.mainsg.id]
  tags = {
    Name = "GIT Server TEst"  
  }
}