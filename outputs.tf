output "subscription_cost_management_views" {
  description = "All subscription_cost_management_view resources"
  value       = azurerm_subscription_cost_management_view.subscription_cost_management_views
}
output "subscription_cost_management_views_accumulated" {
  description = "List of accumulated values across all subscription_cost_management_views"
  value       = [for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : v.accumulated]
}
output "subscription_cost_management_views_chart_type" {
  description = "List of chart_type values across all subscription_cost_management_views"
  value       = [for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : v.chart_type]
}
output "subscription_cost_management_views_dataset" {
  description = "List of dataset values across all subscription_cost_management_views"
  value       = [for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : v.dataset]
}
output "subscription_cost_management_views_display_name" {
  description = "List of display_name values across all subscription_cost_management_views"
  value       = [for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : v.display_name]
}
output "subscription_cost_management_views_kpi" {
  description = "List of kpi values across all subscription_cost_management_views"
  value       = [for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : v.kpi]
}
output "subscription_cost_management_views_name" {
  description = "List of name values across all subscription_cost_management_views"
  value       = [for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : v.name]
}
output "subscription_cost_management_views_pivot" {
  description = "List of pivot values across all subscription_cost_management_views"
  value       = [for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : v.pivot]
}
output "subscription_cost_management_views_report_type" {
  description = "List of report_type values across all subscription_cost_management_views"
  value       = [for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : v.report_type]
}
output "subscription_cost_management_views_subscription_id" {
  description = "List of subscription_id values across all subscription_cost_management_views"
  value       = [for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : v.subscription_id]
}
output "subscription_cost_management_views_timeframe" {
  description = "List of timeframe values across all subscription_cost_management_views"
  value       = [for k, v in azurerm_subscription_cost_management_view.subscription_cost_management_views : v.timeframe]
}

