
import 'dart:async';

import 'package:flutter/material.dart';
import '../../../../core/themes/style_manager.dart';

class OtpTimer extends StatefulWidget {
  final VoidCallback onResend;

  const OtpTimer({
    super.key,
    required this.onResend,
  });

  @override
  State<OtpTimer> createState() => _OtpTimerState();
}

class _OtpTimerState extends State<OtpTimer> {
  int seconds = 60;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds > 0) {
        setState(() => seconds--);
      } else {
        timer.cancel();
      }
    });
  }

  void resendCode() {
    widget.onResend();

    setState(() => seconds = 60);
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    final minutes = seconds ~/ 60;
    final remaining = seconds % 60;

    return Text(
      '${minutes.toString().padLeft(2, '0')}:${remaining.toString().padLeft(2, '0')}',
      style: StyleManager.subtitle,
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
}
