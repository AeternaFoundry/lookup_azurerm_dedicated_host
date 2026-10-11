output "dedicated_host_lookup_id" {
  description = "Map of id values across all dedicated_host_lookup, keyed the same as var.dedicated_host_lookup"
  value       = { for k, v in data.azurerm_dedicated_host.dedicated_host_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dedicated_host_lookup_dedicated_host_group_name" {
  description = "Map of dedicated_host_group_name values across all dedicated_host_lookup, keyed the same as var.dedicated_host_lookup"
  value       = { for k, v in data.azurerm_dedicated_host.dedicated_host_lookup : k => v.dedicated_host_group_name if v.dedicated_host_group_name != null && length(v.dedicated_host_group_name) > 0 }
}
output "dedicated_host_lookup_location" {
  description = "Map of location values across all dedicated_host_lookup, keyed the same as var.dedicated_host_lookup"
  value       = { for k, v in data.azurerm_dedicated_host.dedicated_host_lookup : k => v.location if v.location != null && length(v.location) > 0 }
}
output "dedicated_host_lookup_name" {
  description = "Map of name values across all dedicated_host_lookup, keyed the same as var.dedicated_host_lookup"
  value       = { for k, v in data.azurerm_dedicated_host.dedicated_host_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dedicated_host_lookup_resource_group_name" {
  description = "Map of resource_group_name values across all dedicated_host_lookup, keyed the same as var.dedicated_host_lookup"
  value       = { for k, v in data.azurerm_dedicated_host.dedicated_host_lookup : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "dedicated_host_lookup_tags" {
  description = "Map of tags values across all dedicated_host_lookup, keyed the same as var.dedicated_host_lookup"
  value       = { for k, v in data.azurerm_dedicated_host.dedicated_host_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

