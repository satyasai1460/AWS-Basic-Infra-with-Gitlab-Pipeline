resource "aws_instance" "web-1" {
  count                       = 3
  ami                         = "ami-0261755bbcb8c4a84"
  instance_type               = "t2.micro"
  key_name                    = "2AWSB46-KP"
  subnet_id                   = aws_subnet.subnet1-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "AWSB46-Server-${count.index + 1}"
    Env        = "Prod"
    Owner      = "Sree"
    CostCenter = "ABCD"
  }
}