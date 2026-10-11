resource "grafana_fleet_management_collector" "fleet_management_collectors" {
  for_each = var.fleet_management_collectors

  id                = each.value.id
  collector_type    = each.value.collector_type
  enabled           = each.value.enabled
  remote_attributes = each.value.remote_attributes
}

