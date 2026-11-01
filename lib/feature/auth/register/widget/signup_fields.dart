import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/themes/style_manager.dart';
import 'package:soor_app/core/widgets/custom_text_field.dart';

class SignupFields extends StatelessWidget {
  const SignupFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5.h,
      children: [
        Text("Phone Number", style: StyleManager.whiteText),
        CustomTextField(hintText: "+966 000 000 00"),
        7.verticalSpace,
        Text("Email", style: StyleManager.whiteText),
        CustomTextField(hintText: "Enter your email"),
        7.verticalSpace,
        Text("Full Name", style: StyleManager.whiteText),
        CustomTextField(hintText: "Enter your full name"),
        7.verticalSpace,
        Text("Password", style: StyleManager.whiteText),
        CustomTextField(hintText: "*********", isObscured: true),
        7.verticalSpace,
        Text("Confirm Password", style: StyleManager.whiteText),
        CustomTextField(hintText: "*********", isObscured: true),

      ],
    );
  }
}
