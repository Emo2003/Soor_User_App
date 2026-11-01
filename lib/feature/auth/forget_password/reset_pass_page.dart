import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/const/assets_manager.dart';
import 'package:soor_app/core/themes/style_manager.dart';
import 'package:soor_app/core/widgets/custom_second_btn.dart';
import 'package:soor_app/feature/auth/forget_password/widget/custom_app_bar.dart';
import 'package:soor_app/feature/auth/forget_password/widget/reset_pass_fields.dart';

import '../../../core/routes/routes_name.dart';
import '../../../core/themes/color_manager.dart';

class ResetPassPage extends StatelessWidget {
  const ResetPassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: CustomForgetAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: Column(
            children: [
              Image.asset(AssetsManager.logo, fit: BoxFit.cover, width: 120.w),
              20.verticalSpace,
              Text("Reset Password", style: StyleManager.title),
              30.verticalSpace,
              ResetPassFields(
                passwordController: TextEditingController(),
                confirmPasswordController: TextEditingController(),
              ),
              30.verticalSpace,
              CustomSecondBtn(
                onPressed: () {
                  Navigator.pushNamed(context, RoutesName.passwordChanged);
                },
                text: "Save",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
