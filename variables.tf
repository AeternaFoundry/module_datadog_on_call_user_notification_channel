variable "on_call_user_notification_channels" {
  description = <<EOT
Map of on_call_user_notification_channels, attributes below
Required:
    - user_id
Optional:
    - email (block):
        - address (optional)
        - formats (optional)
    - phone (block):
        - number (optional)
EOT

  type = map(object({
    user_id = string
    email = optional(list(object({
      address = optional(string)
      formats = optional(list(string))
    })))
    phone = optional(list(object({
      number = optional(string)
    })))
  }))
}

