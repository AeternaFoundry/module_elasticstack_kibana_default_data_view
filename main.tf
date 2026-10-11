resource "elasticstack_kibana_default_data_view" "kibana_default_data_views" {
  for_each = var.kibana_default_data_views

  data_view_id = each.value.data_view_id
  force        = each.value.force
  skip_delete  = each.value.skip_delete
  space_id     = each.value.space_id
  timeouts     = each.value.timeouts

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}

