peers = {
  name                      = "peer1tohub"
  resource_group_name       = "rg-1"
  virtual_network_name      = "vnet-hub"
  remote_virtual_network_id = azurerm_virtual_network.example-2.id
}