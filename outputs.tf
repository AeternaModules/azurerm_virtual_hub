output "virtual_hubs_address_prefix" {
  description = "Map of address_prefix values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.address_prefix }
}
output "virtual_hubs_branch_to_branch_traffic_enabled" {
  description = "Map of branch_to_branch_traffic_enabled values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.branch_to_branch_traffic_enabled }
}
output "virtual_hubs_default_route_table_id" {
  description = "Map of default_route_table_id values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.default_route_table_id }
}
output "virtual_hubs_hub_routing_preference" {
  description = "Map of hub_routing_preference values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.hub_routing_preference }
}
output "virtual_hubs_location" {
  description = "Map of location values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.location }
}
output "virtual_hubs_name" {
  description = "Map of name values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.name }
}
output "virtual_hubs_resource_group_name" {
  description = "Map of resource_group_name values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.resource_group_name }
}
output "virtual_hubs_route" {
  description = "Map of route values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.route }
}
output "virtual_hubs_sku" {
  description = "Map of sku values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.sku }
}
output "virtual_hubs_tags" {
  description = "Map of tags values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.tags }
}
output "virtual_hubs_virtual_router_asn" {
  description = "Map of virtual_router_asn values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.virtual_router_asn }
}
output "virtual_hubs_virtual_router_auto_scale_min_capacity" {
  description = "Map of virtual_router_auto_scale_min_capacity values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.virtual_router_auto_scale_min_capacity }
}
output "virtual_hubs_virtual_router_ips" {
  description = "Map of virtual_router_ips values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.virtual_router_ips }
}
output "virtual_hubs_virtual_wan_id" {
  description = "Map of virtual_wan_id values across all virtual_hubs, keyed the same as var.virtual_hubs"
  value       = { for k, v in azurerm_virtual_hub.virtual_hubs : k => v.virtual_wan_id }
}

