output "virtual_hubs" {
  description = "All virtual_hub resources"
  value       = azurerm_virtual_hub.virtual_hubs
}
output "virtual_hubs_address_prefix" {
  description = "List of address_prefix values across all virtual_hubs"
  value       = [for k, v in azurerm_virtual_hub.virtual_hubs : v.address_prefix]
}
output "virtual_hubs_branch_to_branch_traffic_enabled" {
  description = "List of branch_to_branch_traffic_enabled values across all virtual_hubs"
  value       = [for k, v in azurerm_virtual_hub.virtual_hubs : v.branch_to_branch_traffic_enabled]
}
output "virtual_hubs_default_route_table_id" {
  description = "List of default_route_table_id values across all virtual_hubs"
  value       = [for k, v in azurerm_virtual_hub.virtual_hubs : v.default_route_table_id]
}
output "virtual_hubs_hub_routing_preference" {
  description = "List of hub_routing_preference values across all virtual_hubs"
  value       = [for k, v in azurerm_virtual_hub.virtual_hubs : v.hub_routing_preference]
}
output "virtual_hubs_location" {
  description = "List of location values across all virtual_hubs"
  value       = [for k, v in azurerm_virtual_hub.virtual_hubs : v.location]
}
output "virtual_hubs_name" {
  description = "List of name values across all virtual_hubs"
  value       = [for k, v in azurerm_virtual_hub.virtual_hubs : v.name]
}
output "virtual_hubs_resource_group_name" {
  description = "List of resource_group_name values across all virtual_hubs"
  value       = [for k, v in azurerm_virtual_hub.virtual_hubs : v.resource_group_name]
}
output "virtual_hubs_route" {
  description = "List of route values across all virtual_hubs"
  value       = [for k, v in azurerm_virtual_hub.virtual_hubs : v.route]
}
output "virtual_hubs_sku" {
  description = "List of sku values across all virtual_hubs"
  value       = [for k, v in azurerm_virtual_hub.virtual_hubs : v.sku]
}
output "virtual_hubs_tags" {
  description = "List of tags values across all virtual_hubs"
  value       = [for k, v in azurerm_virtual_hub.virtual_hubs : v.tags]
}
output "virtual_hubs_virtual_router_asn" {
  description = "List of virtual_router_asn values across all virtual_hubs"
  value       = [for k, v in azurerm_virtual_hub.virtual_hubs : v.virtual_router_asn]
}
output "virtual_hubs_virtual_router_auto_scale_min_capacity" {
  description = "List of virtual_router_auto_scale_min_capacity values across all virtual_hubs"
  value       = [for k, v in azurerm_virtual_hub.virtual_hubs : v.virtual_router_auto_scale_min_capacity]
}
output "virtual_hubs_virtual_router_ips" {
  description = "List of virtual_router_ips values across all virtual_hubs"
  value       = [for k, v in azurerm_virtual_hub.virtual_hubs : v.virtual_router_ips]
}
output "virtual_hubs_virtual_wan_id" {
  description = "List of virtual_wan_id values across all virtual_hubs"
  value       = [for k, v in azurerm_virtual_hub.virtual_hubs : v.virtual_wan_id]
}

