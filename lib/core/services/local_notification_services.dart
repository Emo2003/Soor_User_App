import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:soor_app/core/themes/color_manager.dart';

class LocalNotificationServices {
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static StreamController<NotificationResponse> streamController =
      StreamController.broadcast();

  static void onTap(NotificationResponse notificationResponse) {
    streamController.add(notificationResponse);
  }

  static Future init() async {
    InitializationSettings settings = InitializationSettings(
      android: AndroidInitializationSettings('ic_notification'),
      iOS: IOSInitializationSettings(),
    );
    await flutterLocalNotificationsPlugin.initialize(
      settings: settings,
      onDidReceiveNotificationResponse: onTap,
      onDidReceiveBackgroundNotificationResponse: onTap,
    );
  }

  static Future<void> showNotification(RemoteMessage message) async {
    NotificationDetails notificationDetails = NotificationDetails(
      android: AndroidNotificationDetails(
        '0',
        'SoorNotification',
        importance: Importance.max,
        priority: Priority.high,
        color: ColorManager.yellow,
      ),
      iOS: DarwinNotificationDetails(),
    );
    await flutterLocalNotificationsPlugin.show(
      id: 0,
      title: message.notification?.title ?? 'Title',
      body: message.notification?.body ?? 'Body',
      payload: 'Payload',
      notificationDetails: notificationDetails,
    );
  }
}
