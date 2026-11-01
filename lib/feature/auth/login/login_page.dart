import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/helper/validators.dart';
import 'package:soor_app/core/routes/routes_name.dart';
import 'package:soor_app/core/themes/style_manager.dart';
import 'package:soor_app/core/widgets/custom_auth_row.dart';
import 'package:soor_app/core/widgets/custom_btn.dart';
import 'package:soor_app/feature/auth/login/widget/custom_app_bar.dart';
import 'package:soor_app/feature/auth/login/widget/login_fields.dart';
import 'package:soor_app/feature/auth/login/widget/login_header.dart';

import '../../../core/themes/color_manager.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55.h),
        child: CustomAppBar(),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 8.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      LoginHeader(),
                      24.verticalSpace,
                      LoginFields(
                        passwordValidator: Validators.validatePassword,
                        phoneValidator: Validators.validateMobile,
                        phoneController: _phoneController,
                        passwordController: _passwordController,
                      ),
                      30.verticalSpace,
                      GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, RoutesName.forgetPassword);
                          },
                          child: Text("Forget Password?", style: StyleManager.yellowText)),
                      20.verticalSpace,
                      CustomBtn(
                        text: "Login",
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Perform login logic here
                          }
                        },
                      ),
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
      ),
    );
  }
}
