import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:soor_app/core/routes/routes_name.dart';
import 'package:soor_app/core/themes/color_manager.dart';
import 'package:soor_app/core/themes/style_manager.dart';
import 'package:soor_app/core/widgets/custom_auth_row.dart';
import 'package:soor_app/core/widgets/custom_second_btn.dart';

import 'controller/otp_field_controller.dart';
import 'widget/custom_app_bar.dart';
import 'widget/otp_header.dart';
import 'widget/otp_input.dart';
import 'widget/otp_timer.dart';

class VerifyUserPage extends StatefulWidget {
  const VerifyUserPage({super.key});

  @override
  State<VerifyUserPage> createState() => _VerifyUserPageState();
}

class _VerifyUserPageState extends State<VerifyUserPage> {
  final OtpController otpController = OtpController();

  void verifyOtp() {
    if (!otpController.inCompleted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: ColorManager.secondary,
          content: Text(
            'Please enter the complete verification code',
            style: StyleManager.whiteText,
          ),
        ),
      );
      return;
    }

    Navigator.pushNamed(context, RoutesName.resetPassword);
  }

  void resendOtp() {
    otpController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: CustomForgetAppBar(onPressed: () => Navigator.pop(context)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Center(
          child: Column(
            children: [
              const OtpHeader(),
              30.verticalSpace,
              OtpInput(controller: otpController.textEditingController),
              30.verticalSpace,
              OtpTimer(onResend: resendOtp),
              20.verticalSpace,
              CustomAuthRow(text1: "Didn't receive the code?".tr(), text2: "Resend".tr(), onPressed: (){

              }),
              30.verticalSpace,
              CustomSecondBtn(text: 'Verify'.tr(), onPressed: verifyOtp),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }
}
