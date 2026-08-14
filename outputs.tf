output "subscription_cost_management_views_id" {
  description = "Map of id values across all subscription_cost_management_views, keyed the same as var.subscription_cost_management_views"
  value       = { for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : k => v.id if v.id != null && length(v.id) > 0 }
}
output "subscription_cost_management_views_accumulated" {
  description = "Map of accumulated values across all subscription_cost_management_views, keyed the same as var.subscription_cost_management_views"
  value       = { for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : k => v.accumulated if v.accumulated != null }
}
output "subscription_cost_management_views_chart_type" {
  description = "Map of chart_type values across all subscription_cost_management_views, keyed the same as var.subscription_cost_management_views"
  value       = { for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : k => v.chart_type if v.chart_type != null && length(v.chart_type) > 0 }
}
output "subscription_cost_management_views_dataset" {
  description = "Map of dataset values across all subscription_cost_management_views, keyed the same as var.subscription_cost_management_views"
  value       = { for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : k => one(v.dataset) if v.dataset != null && length(v.dataset) > 0 }
}
output "subscription_cost_management_views_display_name" {
  description = "Map of display_name values across all subscription_cost_management_views, keyed the same as var.subscription_cost_management_views"
  value       = { for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "subscription_cost_management_views_kpi" {
  description = "Map of kpi values across all subscription_cost_management_views, keyed the same as var.subscription_cost_management_views"
  value       = { for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : k => v.kpi if v.kpi != null && length(v.kpi) > 0 }
}
output "subscription_cost_management_views_name" {
  description = "Map of name values across all subscription_cost_management_views, keyed the same as var.subscription_cost_management_views"
  value       = { for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : k => v.name if v.name != null && length(v.name) > 0 }
}
output "subscription_cost_management_views_pivot" {
  description = "Map of pivot values across all subscription_cost_management_views, keyed the same as var.subscription_cost_management_views"
  value       = { for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : k => v.pivot if v.pivot != null && length(v.pivot) > 0 }
}
output "subscription_cost_management_views_report_type" {
  description = "Map of report_type values across all subscription_cost_management_views, keyed the same as var.subscription_cost_management_views"
  value       = { for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : k => v.report_type if v.report_type != null && length(v.report_type) > 0 }
}
output "subscription_cost_management_views_subscription_id" {
  description = "Map of subscription_id values across all subscription_cost_management_views, keyed the same as var.subscription_cost_management_views"
  value       = { for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : k => v.subscription_id if v.subscription_id != null && length(v.subscription_id) > 0 }
}
output "subscription_cost_management_views_timeframe" {
  description = "Map of timeframe values across all subscription_cost_management_views, keyed the same as var.subscription_cost_management_views"
  value       = { for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : k => v.timeframe if v.timeframe != null && length(v.timeframe) > 0 }
}

