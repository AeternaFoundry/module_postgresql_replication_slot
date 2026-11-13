output "replication_slots_id" {
  description = "Map of id values across all replication_slots, keyed the same as var.replication_slots"
  value       = { for k, v in postgresql_replication_slot.replication_slots : k => v.id }
}
output "replication_slots_database" {
  description = "Map of database values across all replication_slots, keyed the same as var.replication_slots"
  value       = { for k, v in postgresql_replication_slot.replication_slots : k => v.database }
}
output "replication_slots_name" {
  description = "Map of name values across all replication_slots, keyed the same as var.replication_slots"
  value       = { for k, v in postgresql_replication_slot.replication_slots : k => v.name }
}
output "replication_slots_plugin" {
  description = "Map of plugin values across all replication_slots, keyed the same as var.replication_slots"
  value       = { for k, v in postgresql_replication_slot.replication_slots : k => v.plugin }
}

