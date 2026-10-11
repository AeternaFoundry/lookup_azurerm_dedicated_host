variable "dedicated_host_lookup" {
  description = <<EOT
Map of dedicated_host_lookup, attributes below
Required:
    - dedicated_host_group_name
    - name
    - resource_group_name
EOT

  type = map(object({
    dedicated_host_group_name = string
    name                      = string
    resource_group_name       = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.dedicated_host_lookup : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.dedicated_host_lookup : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.dedicated_host_lookup : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

