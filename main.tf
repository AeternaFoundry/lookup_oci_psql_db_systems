data "oci_psql_db_systems" "psql_db_systems_lookup" {
  for_each = var.psql_db_systems_lookup

  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  state          = each.value.state
  system_role    = each.value.system_role

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

