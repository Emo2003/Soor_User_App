import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:soor_app/core/services/local_notification_services.dart';

class NotificationServices {
  static FirebaseMessaging message = FirebaseMessaging.instance;

  static Future init() async {
    await message.requestPermission();
      String? token = await message.getToken();
      print('Firebase Messaging Token: $token');
    FirebaseMessaging.onBackgroundMessage(handlerOnBackgroundMessage);
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    LocalNotificationServices.showNotification(message);
    });
  }

  static Future<void> handlerOnBackgroundMessage(RemoteMessage message) async {
    await Firebase.initializeApp();
  }
}
