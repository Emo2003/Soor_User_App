
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:soor_app/core/themes/color_manager.dart';
import 'package:soor_app/core/widgets/custom_auth_row.dart';
import 'package:soor_app/core/widgets/custom_btn.dart';
import 'package:soor_app/feature/auth/register/widget/accept_service_row.dart';
import 'package:soor_app/feature/auth/register/widget/signup_fields.dart';
import 'package:soor_app/feature/auth/register/widget/signup_header.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 5.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SignupHeader(),
                    20.verticalSpace,
                    SignupFields(),
                    20.verticalSpace,
                    AcceptServiceRow(),
                    20.verticalSpace,
                    CustomBtn(
                      text: "Sign Up",
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            CustomAuthRow(
              text1: "Already have account?",
              text2: "Login",
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
