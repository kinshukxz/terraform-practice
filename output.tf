output "my_ec2_ip" {
  value = [
    for instance in aws_instance.kinshuk-ec2 : instance.public_ip
  ]

}
output "ec2_puublic_dns" {
  value = [
    for instance in aws_instance.kinshuk-ec2 : instance.public_dns
  ]
}
output "ec2_private_ip" {
  value = [
    for instance in aws_instance.kinshuk-ec2 : instance.private_ip
  ]
}
output "dynamodb_table_name" {
  value = aws_dynamodb_table.name.name
}
