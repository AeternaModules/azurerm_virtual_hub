variable "virtual_hubs" {
  description = <<EOT
Map of virtual_hubs, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - address_prefix
    - branch_to_branch_traffic_enabled
    - hub_routing_preference
    - sku
    - tags
    - virtual_router_auto_scale_min_capacity
    - virtual_wan_id
    - route (block):
        - address_prefixes (required)
        - next_hop_ip_address (required)
EOT

  type = map(object({
    location                               = string
    name                                   = string
    resource_group_name                    = string
    address_prefix                         = optional(string)
    branch_to_branch_traffic_enabled       = optional(bool)
    hub_routing_preference                 = optional(string)
    sku                                    = optional(string)
    tags                                   = optional(map(string))
    virtual_router_auto_scale_min_capacity = optional(number)
    virtual_wan_id                         = optional(string)
    route = optional(list(object({
      address_prefixes    = list(string)
      next_hop_ip_address = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.virtual_hubs : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_hubs : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_hubs : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_hubs : (
        v.sku == null || (contains(["Basic", "Standard"], v.sku))
      )
    ])
    error_message = "must be one of: Basic, Standard"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_hubs : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_hubs : (
        v.virtual_router_auto_scale_min_capacity == null || (v.virtual_router_auto_scale_min_capacity >= 2)
      )
    ])
    error_message = "must be at least 2"
  }
  # Note: 13 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

