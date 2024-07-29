output "IP_AWS_VM" {
  description = "IP publico da vm aws"
  value       = aws_instance.vm.public_ip
}

output "IP_AZURE_VM" {
  description = "IP publico da vm azure"
  value       = azurerm_linux_virtual_machine.vm.public_ip_address
}