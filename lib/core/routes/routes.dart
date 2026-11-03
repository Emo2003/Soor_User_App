import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soor_app/core/routes/routes_name.dart';
import 'package:soor_app/features/services/services_page.dart';

import '../../features/auth/forget_password/forget_password_page.dart';
import '../../features/auth/forget_password/password_changed_page.dart';
import '../../features/auth/forget_password/reset_pass_page.dart';
import '../../features/auth/forget_password/verify_user_page.dart';
import '../../features/auth/login/login_page.dart';
import '../../features/auth/register/signup_page.dart';
import '../../features/home/home_page.dart';
import '../../features/layout/layout_page.dart';

class Routes {
  static Widget _wrapWithCanPop(Widget page) {
    return Builder(
      builder: (context) {
        final canPop = Navigator.of(context).canPop();

        return PopScope(
          canPop: canPop,
          onPopInvokedWithResult: (didPop, _) {
            if (didPop) return;

            if (!Navigator.of(context).canPop()) {
              SystemNavigator.pop();
            }
          },
          child: page,
        );
      },
    );
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.login:
        return MaterialPageRoute(builder: (_) => _wrapWithCanPop(LoginPage()));

      case RoutesName.layout:
        return MaterialPageRoute(
          builder: (_) => _wrapWithCanPop(const LayoutPage()),
        );
      case RoutesName.signUp:
        return MaterialPageRoute(builder: (_) => _wrapWithCanPop(SignupPage()));

      case RoutesName.home:
        return MaterialPageRoute(
          builder: (_) => _wrapWithCanPop(const HomePage()),
        );
      case RoutesName.services:
        return MaterialPageRoute(
          builder: (_) => _wrapWithCanPop(const ServicesPage()),
        );
      case RoutesName.forgetPassword:
        return MaterialPageRoute(
          builder: (_) => _wrapWithCanPop(const ForgetPasswordPage()),
        );
      case RoutesName.verifyUser:
        return MaterialPageRoute(
          builder: (_) => _wrapWithCanPop(const VerifyUserPage()),
        );
      case RoutesName.resetPassword:
        return MaterialPageRoute(
          builder: (_) => _wrapWithCanPop(const ResetPassPage()),
        );
      case RoutesName.passwordChanged:
        return MaterialPageRoute(
          builder: (_) => _wrapWithCanPop(const PasswordChangedPage()),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => _wrapWithCanPop(const Placeholder()),
        );
    }
  }
}
