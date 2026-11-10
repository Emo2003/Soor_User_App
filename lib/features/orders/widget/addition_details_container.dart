import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soor_app/features/orders/widget/selected_card.dart';

import '../../../core/themes/color_manager.dart';
import '../../../core/themes/style_manager.dart';

class AdditionDetailsContainer extends StatefulWidget {
  const AdditionDetailsContainer({super.key});

  @override
  State<AdditionDetailsContainer> createState() =>
      _AdditionDetailsContainerState();
}

class _AdditionDetailsContainerState extends State<AdditionDetailsContainer> {
  late String selectedDressCode = "format";
  late String selectedLanguageCode = "arabic";
  late String selectedCoordinate = "yes";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: ColorManager.darkGray, width: 1.5.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("additional_details".tr(), style: StyleManager.hintText),
          7.verticalSpace,
          Text("dress_code".tr(), style: StyleManager.whiteText),
          7.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 5.w,
            children: [
              Expanded(
                child: SelectedCard(
                  title: "formal",
                  isSelected: selectedDressCode == 'formal',
                  onTap: () {
                    setState(() {
                      selectedDressCode = 'formal';
                    });
                  },
                ),
              ),
              Expanded(
                child: SelectedCard(
                  title: "full_suit",
                  isSelected: selectedDressCode == 'full_suit',
                  onTap: () {
                    setState(() {
                      selectedDressCode = 'full_suit';
                    });
                  },
                ),
              ),
              Expanded(
                child: SelectedCard(
                  title: "casual",
                  isSelected: selectedDressCode == 'casual',
                  onTap: () {
                    setState(() {
                      selectedDressCode = 'casual';
                    });
                  },
                ),
              ),
            ],
          ),
          10.verticalSpace,
          Text("required_language".tr(), style: StyleManager.whiteText),
          7.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 5.w,
            children: [
              Expanded(
                child: SelectedCard(
                  title: "arabic",
                  isSelected: selectedLanguageCode == 'arabic',
                  onTap: () {
                    setState(() {
                      selectedLanguageCode = 'arabic';
                    });
                  },
                ),
              ),
              Expanded(
                child: SelectedCard(
                  title: "english",
                  isSelected: selectedLanguageCode == 'english',
                  onTap: () {
                    setState(() {
                      selectedLanguageCode = 'english';
                    });
                  },
                ),
              ),
            ],
          ),
          10.verticalSpace,
          Text("coordinator_available".tr(), style: StyleManager.whiteText),
          7.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 5.w,
            children: [
              Expanded(
                child: SelectedCard(
                  title: "yes",
                  isSelected: selectedCoordinate == 'yes',
                  onTap: () {
                    setState(() {
                      selectedCoordinate = 'yes';
                    });
                  },
                ),
              ),
              Expanded(
                child: SelectedCard(
                  title: "no",
                  isSelected: selectedCoordinate == 'no',
                  onTap: () {
                    setState(() {
                      selectedCoordinate = 'no';
                    });
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
