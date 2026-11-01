
import 'package:flutter/material.dart';

class OtpController {
  static const int otpLength = 5;

  final textController = TextEditingController();

  String get otp => textController.text;

  bool get isComplete => otp.length == otpLength;

  void clear() => textController.clear();

  void dispose() => textController.dispose();
}
