
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/features/profile/widget/policy_text.dart';

import '../confirm_location/widget/custom_app_bar.dart';

class PolicyPage extends StatelessWidget {
  const PolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: CustomAppBar(
          title: 'terms_title'.tr(),
          onBackPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 20.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PolicyText(
              title: 'terms_intro_title'.tr(),
              content: 'terms_intro'.tr(),
            ),
            PolicyText(
              title: 'terms_definitions'.tr(),
              content: '• ${'terms_application'.tr()}\n'
                  '• ${'terms_user'.tr()}\n'
                  '• ${'terms_provider'.tr()}\n'
                  '• ${'terms_management'.tr()}',
            ),
            PolicyText(
              title: 'terms_usage'.tr(),
              content: '• ${'terms_age'.tr()}\n'
                  '• ${'terms_accurate_data'.tr()}\n'
                  '• ${'terms_legal_usage'.tr()}\n'
                  '• ${'terms_account'.tr()}',
            ),
            PolicyText(
              title: 'terms_services'.tr(),
              content: '• ${'terms_connecting'.tr()}\n'
                  '• ${'terms_intermediary'.tr()}\n'
                  '• ${'terms_provider_responsibility'.tr()}',
            ),
            PolicyText(
              title: 'terms_payment'.tr(),
              content: '• ${'terms_payment_methods'.tr()}\n'
                  '• ${'terms_fees'.tr()}\n'
                  '• ${'terms_refund'.tr()}',
            ),
            PolicyText(
              title: 'terms_legal_responsibility'.tr(),
              content: '• ${'terms_damages'.tr()}\n'
                  '• ${'terms_external_agreements'.tr()}',
            ),
            PolicyText(
              title: 'terms_privacy'.tr(),
              content: '${'terms_privacy_description'.tr()}\n'
                  '${'terms_privacy_policy'.tr()}',
            ),
            PolicyText(
              title: 'terms_modifications'.tr(),
              content: '• ${'terms_modification_right'.tr()}\n'
                  '• ${'terms_modification_notice'.tr()}',
            ),
          ],
        ),
      ),
    );
  }
}
