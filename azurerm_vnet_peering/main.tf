variable "peers" {
  
}

resource "azurerm_virtual_network_peering" "example-1" {
  for_each = {
    peer1 = {
      
    }
  }
  name                      = each.value.name
  resource_group_name       = each.value.example.resource_group_name 
  virtual_network_name      = each.value.virtual_network_name
  remote_virtual_network_id = each.value.remote_virtual_network_id
}