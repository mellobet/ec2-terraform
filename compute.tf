resource "aws_instance" "testInstance_1" {
  ami                       = var.instance_ami
  instance_type             = var.instance_type
  subnet_id                 = aws_subnet.tf-public-subnet_1.id
  vpc_security_group_ids    = [aws_security_group.allow_ssh.id]
  key_name                  = aws_key_pair.ec2key.key_name
}

resource "aws_instance" "testInstance_2" {
  ami                       = var.instance_ami
  instance_type             = var.instance_type
  subnet_id                 = aws_subnet.tf-public-subnet_2.id
  vpc_security_group_ids    = [aws_security_group.allow_ssh.id]
  key_name                  = aws_key_pair.ec2key.key_name
}