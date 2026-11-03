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
