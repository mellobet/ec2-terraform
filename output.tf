
# https://github.com/terraform-aws-modules/terraform-aws-ec2-instance/blob/master/outputs.tf

output "instance_ips" {
  value = ["${aws_instance.testInstance.*.public_ip}"]
}

output "public_dns" {
  description = "List of public DNS names assigned to the instances. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC"
  value       = aws_instance.testInstance.*.public_dns
}
