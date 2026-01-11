resource "azurerm_subscription_cost_management_view" "subscription_cost_management_views" {
  for_each = var.subscription_cost_management_views

  accumulated     = each.value.accumulated
  chart_type      = each.value.chart_type
  display_name    = each.value.display_name
  name            = each.value.name
  report_type     = each.value.report_type
  subscription_id = each.value.subscription_id
  timeframe       = each.value.timeframe

  dataset {
    aggregation {
      column_name = each.value.dataset.aggregation.column_name
      name        = each.value.dataset.aggregation.name
    }
    granularity = each.value.dataset.granularity
    dynamic "grouping" {
      for_each = each.value.dataset.grouping != null ? [each.value.dataset.grouping] : []
      content {
        name = grouping.value.name
        type = grouping.value.type
      }
    }
    dynamic "sorting" {
      for_each = each.value.dataset.sorting != null ? [each.value.dataset.sorting] : []
      content {
        direction = sorting.value.direction
        name      = sorting.value.name
      }
    }
  }

  dynamic "kpi" {
    for_each = each.value.kpi != null ? [each.value.kpi] : []
    content {
      type = kpi.value.type
    }
  }

  dynamic "pivot" {
    for_each = each.value.pivot != null ? [each.value.pivot] : []
    content {
      name = pivot.value.name
      type = pivot.value.type
    }
  }
}

