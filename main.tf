resource "postgresql_replication_slot" "replication_slots" {
  for_each = var.replication_slots

  name     = each.value.name
  plugin   = each.value.plugin
  database = each.value.database
}

