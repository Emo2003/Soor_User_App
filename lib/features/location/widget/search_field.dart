import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/core/themes/color_manager.dart';
import 'package:soor_app/core/themes/style_manager.dart';

import '../../../core/widgets/custom_leading.dart';

class SearchField extends StatelessWidget {
  final VoidCallback? onBackPressed;

  const SearchField({super.key, this.onBackPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorManager.primary,
      leading: CustomLeading(
        onBackPressed: onBackPressed,
      ),
      title: TextFormField(
        decoration: InputDecoration(
          constraints: BoxConstraints(maxHeight: 37.h),
          isDense: true,
          filled: true,
          fillColor: ColorManager.darkGray,
          hintText: "Search for location".tr(),
          hintStyle: StyleManager.hintText,
          prefixIcon: const Icon(Icons.search_outlined, size: 27),
          contentPadding: EdgeInsets.symmetric(vertical: 12.h),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
      ),
    );
  }
}
