
resource "azurerm_linux_virtual_machine" "mtc-vm" {
  name                = "mtc-vm"
  resource_group_name = azurerm_resource_group.mtc-rg.name
  location            = azurerm_resource_group.mtc-rg.location
  size                = "Standard_B1s"
  admin_username      = "adminuser"
  custom_data         = filebase64("customdata.tpl")
  network_interface_ids = [
    azurerm_network_interface.mtc-nic.id,
  ]

  admin_ssh_key {
    username   = "adminuser"
    public_key = file("./key.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}