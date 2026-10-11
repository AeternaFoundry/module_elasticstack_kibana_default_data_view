output "kibana_default_data_views_id" {
  description = "Map of id values across all kibana_default_data_views, keyed the same as var.kibana_default_data_views except keys with no id are omitted"
  value       = { for k, v in elasticstack_kibana_default_data_view.kibana_default_data_views : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kibana_default_data_views_data_view_id" {
  description = "Map of data_view_id values across all kibana_default_data_views, keyed the same as var.kibana_default_data_views except keys with no data_view_id are omitted"
  value       = { for k, v in elasticstack_kibana_default_data_view.kibana_default_data_views : k => v.data_view_id if v.data_view_id != null && length(v.data_view_id) > 0 }
}
output "kibana_default_data_views_force" {
  description = "Map of force values across all kibana_default_data_views, keyed the same as var.kibana_default_data_views except keys with no force are omitted"
  value       = { for k, v in elasticstack_kibana_default_data_view.kibana_default_data_views : k => v.force if v.force != null }
}
output "kibana_default_data_views_kibana_connection" {
  description = "Map of kibana_connection values across all kibana_default_data_views, keyed the same as var.kibana_default_data_views except keys with no kibana_connection are omitted"
  value       = { for k, v in elasticstack_kibana_default_data_view.kibana_default_data_views : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "kibana_default_data_views_skip_delete" {
  description = "Map of skip_delete values across all kibana_default_data_views, keyed the same as var.kibana_default_data_views except keys with no skip_delete are omitted"
  value       = { for k, v in elasticstack_kibana_default_data_view.kibana_default_data_views : k => v.skip_delete if v.skip_delete != null }
}
output "kibana_default_data_views_space_id" {
  description = "Map of space_id values across all kibana_default_data_views, keyed the same as var.kibana_default_data_views except keys with no space_id are omitted"
  value       = { for k, v in elasticstack_kibana_default_data_view.kibana_default_data_views : k => v.space_id if v.space_id != null && length(v.space_id) > 0 }
}

