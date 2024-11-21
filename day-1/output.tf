output "output" {
 value = aws_instance.name.public_ip  
}
output "output2" {  
 value = aws_instance.name.private_ip
}