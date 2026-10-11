variable "psql_db_systems_lookup" {
  description = <<EOT
Map of psql_db_systems_lookup, attributes below
Optional:
    - compartment_id
    - display_name
    - state
    - system_role
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = optional(string)
    display_name   = optional(string)
    state          = optional(string)
    system_role    = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

