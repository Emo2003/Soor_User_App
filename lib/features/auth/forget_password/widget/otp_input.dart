import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/themes/otp_theme.dart';

class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String)? onCompleted;

  const OtpInput({
    super.key,
    required this.controller,
     this.onCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 5,
      controller: controller,
      defaultPinTheme: OtpTheme.defaultPinTheme,
      focusedPinTheme: OtpTheme.focusedPinTheme,
      showCursor: true,
      keyboardType: TextInputType.number,
      onCompleted: onCompleted,
    );
  }
}
