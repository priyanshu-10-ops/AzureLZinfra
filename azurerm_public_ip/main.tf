resource "azurerm_public_ip" "example" {
  for_each = {
    pip1 = {
      name                = "bastion-pip"
      location            = "EastUS"
      resource_group_name = "rg-1"
      allocation_method   = "Static"
      sku                 = "Standard"
    }
  }
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  allocation_method   = each.value.allocation_method
  sku                 = each.value.sku
}
