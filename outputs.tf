output "virtual_hubs_id" {
  description = "Map of id values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "virtual_hubs_address_prefix" {
  description = "Map of address_prefix values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.address_prefix if v.address_prefix != null && length(v.address_prefix) > 0 }
}
output "virtual_hubs_branch_to_branch_traffic_enabled" {
  description = "Map of branch_to_branch_traffic_enabled values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.branch_to_branch_traffic_enabled if v.branch_to_branch_traffic_enabled != null }
}
output "virtual_hubs_default_route_table_id" {
  description = "Map of default_route_table_id values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.default_route_table_id if v.default_route_table_id != null && length(v.default_route_table_id) > 0 }
}
output "virtual_hubs_hub_routing_preference" {
  description = "Map of hub_routing_preference values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.hub_routing_preference if v.hub_routing_preference != null && length(v.hub_routing_preference) > 0 }
}
output "virtual_hubs_location" {
  description = "Map of location values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.location if v.location != null && length(v.location) > 0 }
}
output "virtual_hubs_name" {
  description = "Map of name values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "virtual_hubs_resource_group_name" {
  description = "Map of resource_group_name values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "virtual_hubs_route" {
  description = "Map of route values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.route if v.route != null && length(v.route) > 0 }
}
output "virtual_hubs_sku" {
  description = "Map of sku values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.sku if v.sku != null && length(v.sku) > 0 }
}
output "virtual_hubs_tags" {
  description = "Map of tags values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "virtual_hubs_virtual_router_asn" {
  description = "Map of virtual_router_asn values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.virtual_router_asn if v.virtual_router_asn != null }
}
output "virtual_hubs_virtual_router_auto_scale_min_capacity" {
  description = "Map of virtual_router_auto_scale_min_capacity values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.virtual_router_auto_scale_min_capacity if v.virtual_router_auto_scale_min_capacity != null }
}
output "virtual_hubs_virtual_router_ips" {
  description = "Map of virtual_router_ips values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.virtual_router_ips if v.virtual_router_ips != null && length(v.virtual_router_ips) > 0 }
}
output "virtual_hubs_virtual_wan_id" {
  description = "Map of virtual_wan_id values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.virtual_wan_id if v.virtual_wan_id != null && length(v.virtual_wan_id) > 0 }
}

