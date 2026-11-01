import 'package:flutter/material.dart';

class OtpInputController {
  static const int otpLength = 5;

  final List<TextEditingController> controllers = List.generate(
    otpLength,
        (_) => TextEditingController(),
  );

  final List<FocusNode> focusNodes = List.generate(
    otpLength,
        (_) => FocusNode(),
  );

  void handleOtpChange(String value, int index) {
    if (value.length > 1) {
      final digits = value.replaceAll(RegExp(r'\D'), '');

      for (int i = 0; i < otpLength; i++) {
        controllers[i].text = i < digits.length ? digits[i] : '';
      }

      final nextIndex = digits.length >= otpLength
          ? otpLength - 1
          : digits.length;

      focusNodes[nextIndex].requestFocus();
      return;
    }
    if (value.isNotEmpty && index < otpLength - 1) {
      focusNodes[index + 1].requestFocus();
    }
    if (value.isEmpty && index > 0) {
      focusNodes[index - 1].requestFocus();
    }
  }

  String get otpCode =>
      controllers.map((controller) => controller.text).join();

  bool get isOtpComplete =>
      controllers.every((controller) => controller.text.isNotEmpty);

  void dispose() {
    for (final controller in controllers) {
      controller.dispose();
    }

    for (final node in focusNodes) {
      node.dispose();
    }
  }
}