output "psql_db_systems_lookup_id" {
  description = "Map of id values across all psql_db_systems_lookup, keyed the same as var.psql_db_systems_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_psql_db_systems.psql_db_systems_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "psql_db_systems_lookup_compartment_id" {
  description = "Map of compartment_id values across all psql_db_systems_lookup, keyed the same as var.psql_db_systems_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_psql_db_systems.psql_db_systems_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "psql_db_systems_lookup_db_system_collection" {
  description = "Map of db_system_collection values across all psql_db_systems_lookup, keyed the same as var.psql_db_systems_lookup except keys with no db_system_collection are omitted"
  value       = { for k, v in data.oci_psql_db_systems.psql_db_systems_lookup : k => v.db_system_collection if v.db_system_collection != null && length(v.db_system_collection) > 0 }
}
output "psql_db_systems_lookup_display_name" {
  description = "Map of display_name values across all psql_db_systems_lookup, keyed the same as var.psql_db_systems_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_psql_db_systems.psql_db_systems_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "psql_db_systems_lookup_filter" {
  description = "Map of filter values across all psql_db_systems_lookup, keyed the same as var.psql_db_systems_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_psql_db_systems.psql_db_systems_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "psql_db_systems_lookup_state" {
  description = "Map of state values across all psql_db_systems_lookup, keyed the same as var.psql_db_systems_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_psql_db_systems.psql_db_systems_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}
output "psql_db_systems_lookup_system_role" {
  description = "Map of system_role values across all psql_db_systems_lookup, keyed the same as var.psql_db_systems_lookup except keys with no system_role are omitted"
  value       = { for k, v in data.oci_psql_db_systems.psql_db_systems_lookup : k => v.system_role if v.system_role != null && length(v.system_role) > 0 }
}

