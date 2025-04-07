output "mtc-ip" {
  value = "${azurerm_linux_virtual_machine.mtc-vm.name}:${data.azurerm_public_ip.myc-ip-data.ip_address}"

}