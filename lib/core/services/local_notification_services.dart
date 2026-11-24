import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:http/http.dart' as http;
import 'package:soor_app/core/themes/color_manager.dart';

class LocalNotificationServices {
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static StreamController<NotificationResponse> streamController =
      StreamController();

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
    final imageUrl =
        message.notification?.android?.imageUrl ??
        message.notification?.apple?.imageUrl;

    StyleInformation? style;
    if (imageUrl != null) {
      try {
        final res = await http.get(Uri.parse(imageUrl));
        if (res.statusCode == 200) {
          final bitmap = ByteArrayAndroidBitmap(res.bodyBytes);
          style = BigPictureStyleInformation(bitmap, largeIcon: bitmap);
        }
      } catch (_) {}
    }

    final notificationDetails = NotificationDetails(
      android: AndroidNotificationDetails(
        "channel_id",
        "channel_name",
        importance: Importance.max,
        priority: Priority.high,
        color: ColorManager.yellow,
        styleInformation: style,
        sound: const RawResourceAndroidNotificationSound('notification_sound'),
      ),
      iOS: const DarwinNotificationDetails(),
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
