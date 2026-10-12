variable "replication_slots" {
  description = <<EOT
Map of replication_slots, attributes below
Required:
    - name
    - plugin
Optional:
    - database
EOT

  type = map(object({
    name     = string
    plugin   = string
    database = optional(string)
  }))
}

