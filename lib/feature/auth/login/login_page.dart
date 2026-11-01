import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/routes/routes_name.dart';
import 'package:soor_app/core/themes/style_manager.dart';
import 'package:soor_app/core/widgets/custom_auth_row.dart';
import 'package:soor_app/core/widgets/custom_btn.dart';
import 'package:soor_app/feature/auth/login/widget/custom_app_bar.dart';
import 'package:soor_app/feature/auth/login/widget/login_fields.dart';
import 'package:soor_app/feature/auth/login/widget/login_header.dart';

import '../../../core/themes/color_manager.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55.h),
        child: CustomAppBar(),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LoginHeader(),
                    24.verticalSpace,
                    LoginFields(),
                    30.verticalSpace,
                    Text("Forget Password?", style: StyleManager.yellowText),
                    20.verticalSpace,
                    CustomBtn(text: "Login", onPressed: () {}),
                  ],
                ),
              ),
            ),
          ),
          CustomAuthRow(
            text1: "Don't have an account?",
            text2: "Sign Up",
            onPressed: () {
              Navigator.pushNamed(context, RoutesName.signUp);
            },
          ),
        ],
      ),
    );
  }
}
