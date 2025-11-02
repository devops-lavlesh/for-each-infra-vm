rgs = {
  rg111 = {
    name     = "rg-dev-infratodo"
    location = "central India"
  }
}
vnets = {
  vnet = {
    name           = "vnet-dev-infratodo"
    location       = "central India"
    resource_group = "rg-dev-infratodo"
    address_space  = ["10.0.0.0/16"]
  }
}
subnets = {
  subnet1 = {
    name             = "subnet1-dev-infratodo"
    resource_group   = "rg-dev-infratodo"
    vnet_name        = "vnet-dev-infratodo"
    address_prefixes = ["10.0.1.0/24"]
  }
  subnet2 = {
    name             = "subnet2-dev-infratodo"
    resource_group   = "rg-dev-infratodo"
    vnet_name        = "vnet-dev-infratodo"
    address_prefixes = ["10.0.2.0/24"]
  }
}
public_ips = {
  frontend_ip = {
    name              = "pip-frontend-dev-infratodo"
    resource_group    = "rg-dev-infratodo"
    location          = "central India"
    allocation_method = "Static"
  }
  backend_ip = {
    name              = "pip-backend-dev-infratodo"
    resource_group    = "rg-dev-infratodo"
    location          = "central India"
    allocation_method = "Static"
  }
}

virtual_machine_config = {
  frontend_linux_vm = {
    nic_name        = "nic-frontend-dev-infratodo"
    resource_group  = "rg-dev-infratodo"
    location        = "central India"
    vm_name         = "vm-frontend-dev-infratodo"
    vnet_name       = "vnet-dev-infratodo"
    snet_name       = "subnet1-dev-infratodo"
    pip_name        = "pip-frontend-dev-infratodo"
    size            = "Standard_B1s"
    admin_username  = "devopslucky"
    admin_password  = "Azuredevops@3"
    publisher_image = "Canonical"
    offer_image     = "UbuntuServer"
    sku_image       = "18_04-lts-gen2"
    version_image   = "latest"
    kv_name         = "kv-dev-infratodo"
    secret_name     = "vmadminname"

  }
  backend_linux_vm = {
    nic_name        = "nic-backend-dev-infratodo"
    resource_group  = "rg-dev-infratodo"
    location        = "central India"
    vm_name         = "vm-backend-dev-infratodo"
    vnet_name       = "vnet-dev-infratodo"
    snet_name       = "subnet2-dev-infratodo"
    pip_name        = "pip-backend-dev-infratodo"
    size            = "Standard_B1s"
    admin_username  = "devopslucky"
    admin_password  = "Azuredevops@3"
    publisher_image = "Canonical"
    offer_image     = "UbuntuServer"
    sku_image       = "18_04-lts-gen2"
    version_image   = "latest"
    kv_name         = "kv-dev-infratodo"
    secret_name     = "vmadminname"
  }
}

key_vaults = {

  kv1 = {
    kv_name        = "kv-dev-infratodo"
    location       = "central India"
    resource_group = "rg-dev-infratodo"
  }
}

secrets = {
  vm_user = {
    resource_group = "rg-dev-infratodo"
    secret_name    = "vmadminname"
    value          = "devopslucky"
    kv_name        = "kv-dev-infratodo"
  }
  vm_psw = {
    resource_group = "rg-dev-infratodo"
    secret_name    = "vmadminpaswd"
    value          = "Azuredevops@3"
    kv_name        = "kv-dev-infratodo"

  }

}