import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/helper/validators.dart';
import 'package:soor_app/core/themes/style_manager.dart';
import 'package:soor_app/core/widgets/custom_text_field.dart';

class ResetPassFields extends StatelessWidget {
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  const ResetPassFields({
    super.key,
    required this.passwordController,
    required this.confirmPasswordController,
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
          validator: Validators.validatePassword,
          controller: passwordController,
          isObscured: true,
        ),
        30.verticalSpace,
        Text("Confirm Password", style: StyleManager.whiteText),
        CustomTextField(
          hintText: "********",
          validator: Validators.validatePassword,
          controller: confirmPasswordController,
          isObscured: true,
        ),
      ],
    );
  }
}
