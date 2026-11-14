import 'package:flutter/material.dart';
import 'package:soor_app/core/widgets/custom_leading.dart';

import '../../../../core/themes/color_manager.dart';

class CustomForgetAppBar extends StatelessWidget {
  final Function() onPressed;

  const CustomForgetAppBar({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      scrolledUnderElevation: 0,
      elevation: 0,
      backgroundColor: ColorManager.primary,
      leading: CustomLeading(onBackPressed: onPressed),
    );
  }
}
