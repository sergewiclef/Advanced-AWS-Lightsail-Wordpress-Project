output "ip" {
  value = aws_lightsail_static_ip.static_ip.ip_address
  
}

output "ipv6" {
  value = aws_lightsail_instance.wordpress_instance.ipv6_addresses
  
}