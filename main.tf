resource "datadog_on_call_user_notification_channel" "on_call_user_notification_channels" {
  for_each = var.on_call_user_notification_channels

  user_id = each.value.user_id

  dynamic "email" {
    for_each = each.value.email != null ? each.value.email : []
    content {
      address = email.value.address
      formats = email.value.formats
    }
  }

  dynamic "phone" {
    for_each = each.value.phone != null ? each.value.phone : []
    content {
      number = phone.value.number
    }
  }
}

