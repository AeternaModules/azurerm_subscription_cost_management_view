output "subscription_cost_management_views_id" {
  description = "Map of id values across all subscription_cost_management_views, keyed the same as var.subscription_cost_management_views"
  value       = { for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : k => v.id }
}
output "subscription_cost_management_views_accumulated" {
  description = "Map of accumulated values across all subscription_cost_management_views, keyed the same as var.subscription_cost_management_views"
  value       = { for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : k => v.accumulated }
}
output "subscription_cost_management_views_chart_type" {
  description = "Map of chart_type values across all subscription_cost_management_views, keyed the same as var.subscription_cost_management_views"
  value       = { for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : k => v.chart_type }
}
output "subscription_cost_management_views_dataset" {
  description = "Map of dataset values across all subscription_cost_management_views, keyed the same as var.subscription_cost_management_views"
  value       = { for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : k => v.dataset }
}
output "subscription_cost_management_views_display_name" {
  description = "Map of display_name values across all subscription_cost_management_views, keyed the same as var.subscription_cost_management_views"
  value       = { for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : k => v.display_name }
}
output "subscription_cost_management_views_kpi" {
  description = "Map of kpi values across all subscription_cost_management_views, keyed the same as var.subscription_cost_management_views"
  value       = { for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : k => v.kpi }
}
output "subscription_cost_management_views_name" {
  description = "Map of name values across all subscription_cost_management_views, keyed the same as var.subscription_cost_management_views"
  value       = { for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : k => v.name }
}
output "subscription_cost_management_views_pivot" {
  description = "Map of pivot values across all subscription_cost_management_views, keyed the same as var.subscription_cost_management_views"
  value       = { for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : k => v.pivot }
}
output "subscription_cost_management_views_report_type" {
  description = "Map of report_type values across all subscription_cost_management_views, keyed the same as var.subscription_cost_management_views"
  value       = { for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : k => v.report_type }
}
output "subscription_cost_management_views_subscription_id" {
  description = "Map of subscription_id values across all subscription_cost_management_views, keyed the same as var.subscription_cost_management_views"
  value       = { for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : k => v.subscription_id }
}
output "subscription_cost_management_views_timeframe" {
  description = "Map of timeframe values across all subscription_cost_management_views, keyed the same as var.subscription_cost_management_views"
  value       = { for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : k => v.timeframe }
}

