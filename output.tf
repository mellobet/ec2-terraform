
# https://github.com/terraform-aws-modules/terraform-aws-ec2-instance/blob/master/outputs.tf

# Show Public IP 1
output "instance_ips_1" {
  value = ["${aws_instance.testInstance_1.*.public_ip}"]
}

# Show Public DNS 1
output "public_dns_1" {
  description = "List of public DNS names assigned to the instances. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC"
  value       = aws_instance.testInstance_1.*.public_dns
}

# Show Public IP 2
output "instance_ips_2" {
  value = ["${aws_instance.testInstance_2.*.public_ip}"]
}

# Show Public DNS 2
output "public_dns_2" {
  description = "List of public DNS names assigned to the instances. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC"
  value       = aws_instance.testInstance_2.*.public_dns
}

# Show DNS name of NLB
output "lb_dns" {
    value = aws_lb.generic-NLB.dns_name
}
