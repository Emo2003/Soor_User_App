import 'package:flutter/material.dart';

import 'otp_field.dart';

class OtpFieldsList extends StatelessWidget {
  final List<TextEditingController> controllers;
  final List<FocusNode> focusNodes;
  final Function(String, int) onChanged;

  const OtpFieldsList({
    super.key,
    required this.controllers,
    required this.focusNodes,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        controllers.length,
            (index) => OtpField(
          controller: controllers[index],
          focusNode: focusNodes[index],
          onChanged: (value) {
            onChanged(value, index);
          },
        ),
      ),
    );
  }
}