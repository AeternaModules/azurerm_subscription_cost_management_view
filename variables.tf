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
      aggregation = object({
        column_name = string
        name        = string
      })
      granularity = string
      grouping = optional(object({
        name = string
        type = string
      }))
      sorting = optional(object({
        direction = string
        name      = string
      }))
    })
    kpi = optional(object({
      type = string
    }))
    pivot = optional(object({
      name = string
      type = string
    }))
  }))
}

