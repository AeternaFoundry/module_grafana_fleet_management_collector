output "fleet_management_collectors_collector_type" {
  description = "Map of collector_type values across all fleet_management_collectors, keyed the same as var.fleet_management_collectors except keys with no collector_type are omitted"
  value       = { for k, v in grafana_fleet_management_collector.fleet_management_collectors : k => v.collector_type if v.collector_type != null && length(v.collector_type) > 0 }
}
output "fleet_management_collectors_enabled" {
  description = "Map of enabled values across all fleet_management_collectors, keyed the same as var.fleet_management_collectors except keys with no enabled are omitted"
  value       = { for k, v in grafana_fleet_management_collector.fleet_management_collectors : k => v.enabled if v.enabled != null }
}
output "fleet_management_collectors_id" {
  description = "Map of id values across all fleet_management_collectors, keyed the same as var.fleet_management_collectors except keys with no id are omitted"
  value       = { for k, v in grafana_fleet_management_collector.fleet_management_collectors : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fleet_management_collectors_remote_attributes" {
  description = "Map of remote_attributes values across all fleet_management_collectors, keyed the same as var.fleet_management_collectors except keys with no remote_attributes are omitted"
  value       = { for k, v in grafana_fleet_management_collector.fleet_management_collectors : k => v.remote_attributes if v.remote_attributes != null && length(v.remote_attributes) > 0 }
}

