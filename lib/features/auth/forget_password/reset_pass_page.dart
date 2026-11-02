import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/const/assets_manager.dart';
import 'package:soor_app/core/themes/style_manager.dart';
import 'package:soor_app/core/widgets/custom_second_btn.dart';
import 'package:soor_app/features/auth/forget_password/widget/custom_app_bar.dart';
import 'package:soor_app/features/auth/forget_password/widget/reset_pass_fields.dart';

import '../../../core/helper/validators.dart';
import '../../../core/routes/routes_name.dart';
import '../../../core/themes/color_manager.dart';

class ResetPassPage extends StatefulWidget {
  const ResetPassPage({super.key});

  @override
  State<ResetPassPage> createState() => _ResetPassPageState();
}

class _ResetPassPageState extends State<ResetPassPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

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
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(AssetsManager.logo, fit: BoxFit.cover, width: 120.w),
                20.verticalSpace,
                Text("Reset Password".tr(), style: StyleManager.title),
                30.verticalSpace,
                ResetPassFields(
                  passwordController: passwordController,
                  confirmPasswordController: confirmPasswordController,
                  passwordValidator: Validators.validatePassword,
                  confirmPasswordValidator: Validators.validatePassword,
                ),
                30.verticalSpace,
                CustomSecondBtn(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, RoutesName.passwordChanged);
                    }
                  },
                  text: "Save".tr(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
