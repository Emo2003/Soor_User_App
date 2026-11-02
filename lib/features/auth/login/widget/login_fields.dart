import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/helper/validators.dart';

import '../../../../core/themes/style_manager.dart';
import '../../../../core/widgets/custom_text_field.dart';

class LoginFields extends StatelessWidget {
  final TextEditingController phoneController;
  final TextEditingController passwordController;
  final String? Function(String?)? phoneValidator;
  final String? Function(String?)? passwordValidator;

  const LoginFields({
    super.key,
    required this.phoneController,
    required this.passwordController,
    required this.phoneValidator,
    required this.passwordValidator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5.h,
      children: [
        Text("Phone Number".tr(), style: StyleManager.whiteText),
        CustomTextField(
          hintText: '\u202A+966 000 000 00\u202C',
          controller: phoneController,
          validator: phoneValidator ?? Validators.validateMobile,
        ),
        16.verticalSpace,
        Text("Password".tr(), style: StyleManager.whiteText),
        CustomTextField(
          hintText: "*********",
          isObscured: true,
          controller: passwordController,
          validator: passwordValidator ?? Validators.validatePassword,
        ),
      ],
    );
  }
}
