variable "bastion" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string 
    ip_config = map(object({
      name                 = string
      subnet_id            = list(string)
      public_ip_address_id = list(string)
    }))
  }))
}

resource "azurerm_bastion_host" "bastion" {
  for_each = var.bastion

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  dynamic "ip_configuration" {
    for_each = {}
    content {
      name                 = ip_configuration.value.name
      subnet_id            = ip_configuration.value.subnet_id
      public_ip_address_id = ip_configuration.value.public_ip_address_id
    }

  }
}
