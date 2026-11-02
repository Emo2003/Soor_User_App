import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/helper/validators.dart';
import 'package:soor_app/core/themes/style_manager.dart';
import 'package:soor_app/core/widgets/custom_text_field.dart';

class SignupFields extends StatelessWidget {
  final TextEditingController phoneController;
  final TextEditingController emailController;
  final TextEditingController fullNameController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  const SignupFields({
    super.key,
    required this.phoneController,
    required this.emailController,
    required this.fullNameController,
    required this.passwordController,
    required this.confirmPasswordController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5.h,
      children: [
        Text("Phone Number".tr(), style: StyleManager.whiteText),
        CustomTextField(
          hintText: "+966 000 000 00",
          controller: phoneController,
          validator: Validators.validateMobile,
        ),
        8.verticalSpace,
        Text("Email".tr(), style: StyleManager.whiteText),
        CustomTextField(
          hintText: "Enter your email".tr(),
          controller: emailController,
          validator: Validators.validateEmail,
        ),
        8.verticalSpace,
        Text("Full Name".tr(), style: StyleManager.whiteText),
        CustomTextField(
          hintText: "Enter your full name".tr(),
          controller: fullNameController,
          validator: Validators.validateName,
        ),
        8.verticalSpace,
        Text("Password".tr(), style: StyleManager.whiteText),
        CustomTextField(
          hintText: "*********",
          isObscured: true,
          controller: passwordController,
          validator: Validators.validatePassword,
        ),
        7.verticalSpace,
        Text("Confirm Password".tr(), style: StyleManager.whiteText),
        CustomTextField(
          hintText: "*********",
          isObscured: true,
          validator: Validators.validatePassword,
          controller: confirmPasswordController,
        ),
      ],
    );
  }
}
