import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/validators.dart';
import '../../../../core/themes/style_manager.dart';
import '../../../../core/widgets/custom_text_field.dart';

class ForgetPassField extends StatelessWidget {
  final TextEditingController controller;

  const ForgetPassField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Phone Number".tr(), style: StyleManager.whiteText),
        8.verticalSpace,
        CustomTextField(
          hintText: "+966 000 000 00",
          validator: Validators.validateMobile,
          controller: controller,
        ),
      ],
    );
  }
}
