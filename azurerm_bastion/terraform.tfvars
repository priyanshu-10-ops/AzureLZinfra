bastion = {
  bastion-1 = {
    name                = "bastion"
    location            = "EastUS"
    resource_group_name = "rg-1"
  }

  ipconfig = {
    ip1 = {
      name                 = "bastion-ip"
      subnet_id            = ip_configuration.value.id
      public_ip_address_id = ip_configuration.value.id
    }
  }
}
