
# https://github.com/terraform-aws-modules/terraform-aws-ec2-instance/blob/master/outputs.tf

output "instance_ips_1" {
  value = ["${aws_instance.testInstance_1.*.public_ip}"]
}

output "public_dns_1" {
  description = "List of public DNS names assigned to the instances. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC"
  value       = aws_instance.testInstance_1.*.public_dns
}

output "instance_ips_2" {
  value = ["${aws_instance.testInstance_2.*.public_ip}"]
}

output "public_dns_2" {
  description = "List of public DNS names assigned to the instances. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC"
  value       = aws_instance.testInstance_2.*.public_dns
}
