import 'package:flutter/material.dart';

class OtpController {
  static const int otpLength = 5;
  final textEditingController = TextEditingController();

  String get otp => textEditingController.text;

  bool get inCompleted => otp.length == otpLength;

  void clear() => textEditingController.clear();

  void dispose() => textEditingController.dispose();
}
