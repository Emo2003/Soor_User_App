import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/style_manager.dart';
import '../../../../core/widgets/custom_text_field.dart';

class LoginFields extends StatelessWidget {
  const LoginFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5.h,
      children: [
        Text("Phone Number", style: StyleManager.whiteText),
        CustomTextField(hintText: "+966 000 000 00"),
        16.verticalSpace,
        Text("Password", style: StyleManager.whiteText),
        CustomTextField(hintText: "*********", isObscured: true),
      ],
    );
  }
}
