output "instance_id" {
  value = aws_instance.tf_test_vm.id
}

output "public_ip" {
  value = aws_instance.tf_test_vm.public_ip
}

output "security_groups" {
  value = [aws_instance.tf_test_vm.vpc_security_group_ids]
}
