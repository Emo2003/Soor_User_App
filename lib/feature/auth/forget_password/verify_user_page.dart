import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/routes/routes_name.dart';

import 'package:soor_app/core/themes/color_manager.dart';
import 'package:soor_app/core/widgets/custom_auth_row.dart';
import 'package:soor_app/core/widgets/custom_second_btn.dart';
import 'package:soor_app/feature/auth/forget_password/widget/otp_field_list.dart';

import '../../../core/themes/style_manager.dart';
import 'controller/otp_field_controller.dart';
import 'widget/custom_app_bar.dart';
import 'widget/otp_header.dart';
import 'widget/otp_timer.dart';

class VerifyUserPage extends StatefulWidget {
  const VerifyUserPage({super.key});

  @override
  State<VerifyUserPage> createState() => _VerifyUserPageState();
}

class _VerifyUserPageState extends State<VerifyUserPage> {
  final OtpInputController otpController = OtpInputController();

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  void verifyOtp() {
    if (!otpController.isOtpComplete) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: ColorManager.secondary,
          content: Text(
            "Please enter the complete verification code",
            style: StyleManager.whiteText,
          ),
        ),
      );
      return;
    }

    Navigator.pushNamed(context, RoutesName.resetPassword);
  }

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

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),

        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const OtpHeader(),
              30.verticalSpace,
              OtpFieldsList(
                controllers: otpController.controllers,
                focusNodes: otpController.focusNodes,
                onChanged: otpController.handleOtpChange,
              ),
              30.verticalSpace,
              const OtpTimer(),
              20.verticalSpace,
              CustomAuthRow(
                text1: "Didn't receive the code?",
                text2: "Resend",
                onPressed: () {},
              ),
              20.verticalSpace,
              CustomSecondBtn(text: "Verify", onPressed: verifyOtp),
            ],
          ),
        ),
      ),
    );
  }
}
