resource "aws_instance" "testInstance" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.tf-public-subnet.id
  vpc_security_group_ids = [
    aws_security_group.allow_ssh.id,
    aws_security_group.allow_web.id,
    aws_security_group.allow_jupyternb.id,
    aws_security_group.allow_django_devsrv.id
  ]
  key_name = aws_key_pair.ec2key.key_name
}
