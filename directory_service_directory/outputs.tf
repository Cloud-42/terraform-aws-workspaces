output "id" {
  description = "Directory id."
  value       = aws_directory_service_directory.main.id
}
output "dns_ip_addresses" {
  description = "Directory DNS IP addresses."
  value       = aws_directory_service_directory.main.dns_ip_addresses
}
output "access_url" {
  description = "Directory access URL."
  value       = aws_directory_service_directory.main.access_url
}

