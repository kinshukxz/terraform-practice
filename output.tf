output "my_ec2_ip" {
  value = aws_instance.kinshuk-ec2.public_ip
  
}