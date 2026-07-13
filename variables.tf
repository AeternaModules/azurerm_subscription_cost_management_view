variable "subscription_cost_management_views" {
  description = <<EOT
Map of subscription_cost_management_views, attributes below
Required:
    - accumulated
    - chart_type
    - display_name
    - name
    - report_type
    - subscription_id
    - timeframe
    - dataset (block):
        - aggregation (required, block):
            - column_name (required)
            - name (required)
        - granularity (required)
        - grouping (optional, block):
            - name (required)
            - type (required)
        - sorting (optional, block):
            - direction (required)
            - name (required)
Optional:
    - kpi (block):
        - type (required)
    - pivot (block):
        - name (required)
        - type (required)
EOT

  type = map(object({
    accumulated     = bool
    chart_type      = string
    display_name    = string
    name            = string
    report_type     = string
    subscription_id = string
    timeframe       = string
    dataset = object({
      aggregation = list(object({
        column_name = string
        name        = string
      }))
      granularity = string
      grouping = optional(list(object({
        name = string
        type = string
      })))
      sorting = optional(list(object({
        direction = string
        name      = string
      })))
    })
    kpi = optional(list(object({
      type = string
    })))
    pivot = optional(list(object({
      name = string
      type = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.subscription_cost_management_views : (
        length(v.dataset.aggregation) >= 1
      )
    ])
    error_message = "Each aggregation list must contain at least 1 items"
  }
}

