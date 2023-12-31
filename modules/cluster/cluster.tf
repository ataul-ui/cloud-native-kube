resource "azurerm_resource_group" "aks-getting-started" {
  name     = "aks-getting-started"
  location = var.location
}

resource "azurerm_kubernetes_cluster" "aks-getting-started" {
  name                  = "aks-getting-started"
  location              = azurerm_resource_group.aks-getting-started.location
  resource_group_name   = azurerm_resource_group.aks-getting-started.name
  dns_prefix            = "aks-getting-started"            
  kubernetes_version    =  var.kubernetes_version
  
  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_E4s_v3"
    type       = "VirtualMachineScaleSets"
    os_disk_size_gb = 250
  }
 
  service_principal  {
    client_id = var.serviceprinciple_id
    client_secret = var.serviceprinciple_key
  }

  network_profile {
      network_plugin = "kubenet"
      load_balancer_sku = "standard"
  }
}
