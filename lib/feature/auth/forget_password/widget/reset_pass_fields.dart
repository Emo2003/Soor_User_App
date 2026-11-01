import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/themes/style_manager.dart';
import 'package:soor_app/core/widgets/custom_text_field.dart';

class ResetPassFields extends StatelessWidget {
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final String? Function(String?)passwordValidator;
  final String? Function(String?)confirmPasswordValidator;
  const ResetPassFields({
    super.key,
    required this.passwordController,
    required this.confirmPasswordController,
    required this.passwordValidator,
    required this.confirmPasswordValidator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5.h,
      children: [
        Text("Password", style: StyleManager.whiteText),
        CustomTextField(
          hintText: "********",
          validator: passwordValidator,
          controller: passwordController,
          isObscured: true,
        ),
        30.verticalSpace,
        Text("Confirm Password", style: StyleManager.whiteText),
        CustomTextField(
          hintText: "********",
          validator: confirmPasswordValidator,
          controller: confirmPasswordController,
          isObscured: true,
        ),
      ],
    );
  }
}
