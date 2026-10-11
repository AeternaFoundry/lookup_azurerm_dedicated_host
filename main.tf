data "azurerm_dedicated_host" "dedicated_host_lookup" {
  for_each = var.dedicated_host_lookup

  dedicated_host_group_name = each.value.dedicated_host_group_name
  name                      = each.value.name
  resource_group_name       = each.value.resource_group_name
}

