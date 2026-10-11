variable "fleet_management_collectors" {
  description = <<EOT
Map of fleet_management_collectors, attributes below
Required:
    - id
Optional:
    - collector_type
    - enabled
    - remote_attributes
EOT

  type = map(object({
    id                = string
    collector_type    = optional(string)
    enabled           = optional(bool)
    remote_attributes = optional(map(string))
  }))
}

