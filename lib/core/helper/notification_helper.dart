import 'package:flutter/material.dart';
import 'package:soor_app/core/const/dummy_data.dart';

class NotificationHelper {
  Map<DateTime, List<NotificationModel>> groupNotification(
    List<NotificationModel> notifications,
  ) {
    final Map<DateTime, List<NotificationModel>> grouped = {};
    for (final notification in notifications) {
      final date = DateUtils.dateOnly(notification.createdAt);
      grouped.putIfAbsent(date, () => []);
      grouped[date]?.add(notification);
    }
    return grouped;
  }
}
