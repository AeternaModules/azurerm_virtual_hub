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
    branch_to_branch_traffic_enabled       = optional(bool)   # Default: false
    hub_routing_preference                 = optional(string) # Default: "ExpressRoute"
    sku                                    = optional(string)
    tags                                   = optional(map(string))
    virtual_router_auto_scale_min_capacity = optional(number) # Default: 2
    virtual_wan_id                         = optional(string)
    route = optional(list(object({
      address_prefixes    = list(string)
      next_hop_ip_address = string
    })))
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_virtual_hub's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from networkValidate.VirtualHubName] !regexp.MustCompile(`^.{1,256}$`).MatchString(value)
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: address_prefix
  #   source:    [from validate.CIDR] re != nil && !re.MatchString(cidr)
  # path: sku
  #   condition: contains(["Basic", "Standard"], value)
  #   message:   must be one of: Basic, Standard
  # path: virtual_wan_id
  #   source:    [from virtualwans.ValidateVirtualWANID] !ok
  # path: virtual_wan_id
  #   source:    [from virtualwans.ValidateVirtualWANID] err != nil
  # path: route.address_prefixes[*]
  #   source:    [from validate.CIDR] re != nil && !re.MatchString(cidr)
  # path: route.next_hop_ip_address
  #   source:    [from validate.IPv4Address] !ok
  # path: route.next_hop_ip_address
  #   source:    [from validate.IPv4Address] four == nil
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
  # path: hub_routing_preference
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: virtual_router_auto_scale_min_capacity
  #   condition: value >= 2
  #   message:   must be at least 2
}

