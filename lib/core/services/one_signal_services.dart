import 'package:onesignal_flutter/onesignal_flutter.dart';

class OneSignalServices {
  static Future<void> init() async {
    OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
    OneSignal.initialize('66124f1b-15c9-4698-af8e-4e4e61d839cf');
    await OneSignal.Notifications.requestPermission(true);
  }
}
