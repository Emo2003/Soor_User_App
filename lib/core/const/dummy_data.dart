
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

  static void openSuccessRatingDialog({required BuildContext context}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return SuccessRatingContainer();
      },
    );
  }

 static  List<NotificationModel> notifications = [
    NotificationModel(
      title: "Your order has been placed successfully.",
      content: "The guards is in way",
      createdAt: DateTime.now(),
      isNewNotification: true,
    ),
    NotificationModel(
      title: "Your order has been placed successfully.",
      content: "The guards is in way",
      createdAt: DateTime.now(),
    ),
    NotificationModel(
      title: "Your order has been placed successfully.",
      content: "The guards is in way",
      createdAt: DateTime.now(),
    ),
    NotificationModel(
      title: "Your order has been placed successfully.",
      content: "The guards is in way",
      createdAt: DateTime.now().subtract(Duration(days: 1)),
    ),
    NotificationModel(
      title: "Your order has been placed successfully.",
      content: "The guards is in way",
      createdAt: DateTime.now().subtract(Duration(days: 1,hours: 7)),
    ),
    NotificationModel(
      title: "Your order has been placed successfully.",
      content: "The guards is in way",
      createdAt: DateTime.now().subtract(Duration(days: 2)),
    ),
    NotificationModel(
      title: "Your order has been placed successfully.",
      content: "The guards is in way",
      createdAt: DateTime.now().subtract(Duration(days: 2)),
    ),
  ];
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

class NotificationModel {
  final String title;
  final String content;
  final DateTime createdAt;
  final bool isNewNotification;

  NotificationModel({
    required this.title,
    required this.content,
    required this.createdAt,
    this.isNewNotification = false,
  });
}
String dateTitle(DateTime date) {
  final today = DateUtils.dateOnly(DateTime.now());
  final yesterday = today.subtract(const Duration(days: 1));

  if (DateUtils.isSameDay(date, today)) {
    return "Today";
  } else if (DateUtils.isSameDay(date, yesterday)) {
    return "Yesterday";
  } else {
    return DateFormat('dd MMMM yyyy').format(date);
  }
}