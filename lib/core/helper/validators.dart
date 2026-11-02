import 'package:easy_localization/easy_localization.dart';

class Validators {
  Validators._();

  static String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Name is required';
    }

    if (value.trim().length < 3) {
      return 'Name must be at least 3 characters';
    }

    return null;
  }

  static String? validateMobile(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Mobile number is required'.tr();
    }

    final mobile = value
        .trim()
        .replaceAll(RegExp(r'\s+'), '')
        .replaceAllMapped(
          RegExp(r'[٠-٩]'),
          (match) => '٠١٢٣٤٥٦٧٨٩'.indexOf(match[0]!).toString(),
        );

    final mobileRegex = RegExp(r'^(05\d{8}|\+9665\d{8}|\+96600000000)$');

    if (!mobileRegex.hasMatch(mobile)) {
      return 'Enter a valid mobile number'.tr();
    }

    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }

    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegex.hasMatch(value.trim())) {
      return 'Enter a valid email address';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }

    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Password must contain an uppercase letter';
    }

    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return 'Password must contain a lowercase letter';
    }

    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return 'Password must contain a number';
    }

    return null;
  }
}
