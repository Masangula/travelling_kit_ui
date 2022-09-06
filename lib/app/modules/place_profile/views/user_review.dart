class UserReview {
  final String userName;
  final String imageUrl;
  final String reviewText;

  const UserReview(
      {required this.userName,
      required this.imageUrl,
      required this.reviewText});
  static const userReviews = [
    UserReview(
      userName: 'Yelena Belova',
      imageUrl: 'assets/images/user_1.png',
      reviewText:
          'Pretty nice. The entrance is quite far from the parking lot but wouldnt be much of a problem if it wasnt raining. Love the interior :)',
    ),
    UserReview(
      userName: 'James Mulner',
      imageUrl: 'assets/images/user_2.png',
      reviewText:
          'Ketut offering supports to almost every cases, always reachable and was really helpful. definitely value for money stay!',
    ),
    UserReview(
      userName: 'Mark Travor',
      imageUrl: 'assets/images/user_3.png',
      reviewText:
          'A really great place and amazing work place, I really love staying there! Will definitely come back!',
    ),
  ];
}
