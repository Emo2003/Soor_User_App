import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:soor_app/core/themes/color_manager.dart';
import 'package:soor_app/core/widgets/custom_auth_row.dart';
import 'package:soor_app/core/widgets/custom_btn.dart';
import 'package:soor_app/features/auth/register/widget/accept_service_row.dart';
import 'package:soor_app/features/auth/register/widget/signup_fields.dart';
import 'package:soor_app/features/auth/register/widget/signup_header.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.background,
      body: SafeArea(
        child: Form(
          key: _formKey,
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
                      SignupFields(
                        fullNameController: _nameController,
                        phoneController: _phoneController,
                        emailController: _emailController,
                        passwordController: _passwordController,
                        confirmPasswordController: _confirmPasswordController,
                      ),
                      15.verticalSpace,
                      AcceptServiceRow(),
                      15.verticalSpace,
                      CustomBtn(
                        text: "Sign Up".tr(),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Perform sign-up logic here
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
              10.verticalSpace,
              CustomAuthRow(
                text1: "Already have account?".tr(),
                text2: "Login".tr(),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
