resource "aws_instance" "johnec2" {
  ami             = "ami-0c614dee691cbbf37"
  instance_type   = "t2.micro"
  key_name        = "devopskeypair"
  subnet_id       = aws_subnet.subnet1.id
  security_groups = [aws_security_group.johnsg.name]

  tags = {
    Name = "johnec2"
  }

}
