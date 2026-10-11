output "on_call_user_notification_channels_id" {
  description = "Map of id values across all on_call_user_notification_channels, keyed the same as var.on_call_user_notification_channels except keys with no id are omitted"
  value       = { for k, v in datadog_on_call_user_notification_channel.on_call_user_notification_channels : k => v.id if v.id != null && length(v.id) > 0 }
}
output "on_call_user_notification_channels_email" {
  description = "Map of email values across all on_call_user_notification_channels, keyed the same as var.on_call_user_notification_channels except keys with no email are omitted"
  value       = { for k, v in datadog_on_call_user_notification_channel.on_call_user_notification_channels : k => v.email if v.email != null && length(v.email) > 0 }
}
output "on_call_user_notification_channels_phone" {
  description = "Map of phone values across all on_call_user_notification_channels, keyed the same as var.on_call_user_notification_channels except keys with no phone are omitted"
  value       = { for k, v in datadog_on_call_user_notification_channel.on_call_user_notification_channels : k => v.phone if v.phone != null && length(v.phone) > 0 }
}
output "on_call_user_notification_channels_user_id" {
  description = "Map of user_id values across all on_call_user_notification_channels, keyed the same as var.on_call_user_notification_channels except keys with no user_id are omitted"
  value       = { for k, v in datadog_on_call_user_notification_channel.on_call_user_notification_channels : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

