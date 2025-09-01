output "my_ec2_ip" {
  value = aws_instance.kinshuk-ec2.public_ip

}
output "ec2_puublic_dns" {
  value = aws_instance.kinshuk-ec2.public_dns
}
output "ec2_private_ip" {
  value = aws_instance.kinshuk-ec2.private_ip
}
output "dynamodb_table_name" {
  value = aws_dynamodb_table.name.name
}
