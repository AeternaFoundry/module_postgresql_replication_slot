output "replication_slots_id" {
  description = "Map of id values across all replication_slots, keyed the same as var.replication_slots except keys with no id are omitted"
  value       = { for k, v in postgresql_replication_slot.replication_slots : k => v.id if v.id != null && length(v.id) > 0 }
}
output "replication_slots_database" {
  description = "Map of database values across all replication_slots, keyed the same as var.replication_slots except keys with no database are omitted"
  value       = { for k, v in postgresql_replication_slot.replication_slots : k => v.database if v.database != null && length(v.database) > 0 }
}
output "replication_slots_name" {
  description = "Map of name values across all replication_slots, keyed the same as var.replication_slots except keys with no name are omitted"
  value       = { for k, v in postgresql_replication_slot.replication_slots : k => v.name if v.name != null && length(v.name) > 0 }
}
output "replication_slots_plugin" {
  description = "Map of plugin values across all replication_slots, keyed the same as var.replication_slots except keys with no plugin are omitted"
  value       = { for k, v in postgresql_replication_slot.replication_slots : k => v.plugin if v.plugin != null && length(v.plugin) > 0 }
}

