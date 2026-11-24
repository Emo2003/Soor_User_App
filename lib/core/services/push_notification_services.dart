import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:soor_app/core/services/local_notification_services.dart';

class PushNotificationServices {
  static FirebaseMessaging message = FirebaseMessaging.instance;

  static Future init() async {
    await message.requestPermission();
    final token =await message.getToken().then((value) {
      showNotification(value!);
    });
    print("firebase :$token");
    FirebaseMessaging.onBackgroundMessage(handlerOnBackgroundMessage);
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      LocalNotificationServices.showNotification(message);
    });
    message.onTokenRefresh.listen((value) {
      showNotification(value);
    });
  }

  static void showNotification(String token) {}

  static Future<void> handlerOnBackgroundMessage(RemoteMessage message) async {
    await Firebase.initializeApp();
  }
}
