import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:soor_app/features/booking/widget/success_rating_container.dart';

class DummyData {
  static final List<ReviewModel> reviews = [
    ReviewModel(
      reviewerName: "Ahmed Ali",
      rating: 5,
      review: "Excellent service with punctuality.",
    ),
    ReviewModel(
      reviewerName: "Mohamed Hassan",
      rating: 4,
      review: "Very good service and friendly staff.",
    ),
    ReviewModel(
      reviewerName: "Sara Mohamed",
      rating: 3,
      review: "Amazing experience. Highly recommended!",
    ),
  ];

  static void changeLanguage({required BuildContext context}) {
    final currentLocale = context.locale;

    if (currentLocale.languageCode == 'en') {
      context.setLocale(const Locale('ar'));
    } else {
      context.setLocale(const Locale('en'));
    }
  }

  static void openSuccessRatingDialog({
    required BuildContext context,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return SuccessRatingContainer();
      },
    );
  }
}

class ReviewModel {
  final String reviewerName;
  final int rating;
  final String review;

  ReviewModel({
    required this.reviewerName,
    required this.rating,
    required this.review,
  });
}
