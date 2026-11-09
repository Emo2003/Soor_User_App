import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:soor_app/features/auth/forget_password/forget_password_page.dart';
import 'package:soor_app/features/auth/forget_password/password_changed_page.dart';
import 'package:soor_app/features/auth/forget_password/reset_pass_page.dart';
import 'package:soor_app/features/auth/forget_password/verify_user_page.dart';
import 'package:soor_app/features/auth/login/login_page.dart';
import 'package:soor_app/features/auth/register/signup_page.dart';
import 'package:soor_app/features/booking/booking_details.dart';
import 'package:soor_app/features/chat/chat_page.dart';
import 'package:soor_app/features/chat/widget/call_page.dart';
import 'package:soor_app/features/home/home_page.dart';
import 'package:soor_app/features/layout/layout_page.dart';
import 'package:soor_app/features/location/choose_location_page.dart';
import 'package:soor_app/features/confirm_location/confirm_location_page.dart';
import 'package:soor_app/features/services/services_page.dart';

import 'routes_name.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: RoutesName.login,

    routes: [
      GoRoute(
        path: RoutesName.login,
        builder: (context, state) => const LoginPage(),
      ),

      GoRoute(
        path: RoutesName.signUp,
        builder: (context, state) => const SignupPage(),
      ),

      GoRoute(
        path: RoutesName.layout,
        builder: (context, state) => const LayoutPage(),
      ),

      GoRoute(
        path: RoutesName.home,
        builder: (context, state) => const HomePage(),
      ),

      GoRoute(
        path: RoutesName.services,
        builder: (context, state) => const ServicesPage(),
      ),

      GoRoute(
        path: RoutesName.location,
        builder: (context, state) => const ChooseLocationPage(),
      ),

      GoRoute(
        path: RoutesName.confirmLocation,
        builder: (context, state) => const ConfirmLocationPage(),
      ),
      GoRoute(
        path: RoutesName.bookingDetails,
        builder: (context, state) => const BookingDetails(),
      ),
      GoRoute(
        path: RoutesName.chat,
        builder: (context, state) => const ChatPage(),
      ),
      GoRoute(
        path: RoutesName.call,
        builder: (context, state) => const CallPage(),
      ),
      GoRoute(
        path: RoutesName.forgetPassword,
        builder: (context, state) => const ForgetPasswordPage(),
      ),

      GoRoute(
        path: RoutesName.verifyUser,
        builder: (context, state) => const VerifyUserPage(),
      ),

      GoRoute(
        path: RoutesName.resetPassword,
        builder: (context, state) => const ResetPassPage(),
      ),

      GoRoute(
        path: RoutesName.passwordChanged,
        builder: (context, state) => const PasswordChangedPage(),
      ),
    ],

    errorBuilder: (context, state) {
      return const Scaffold(body: Center(child: Text('Page not found')));
    },
  );
}
