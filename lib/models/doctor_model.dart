class DoctorModel {
  final String name;
  final int averageReview;
  final int totalReviews;
  final String profile;
  DoctorModel({
    required this.name,
    required this.averageReview,
    required this.totalReviews,
    required this.profile,
  });
}

final List<DoctorModel> nearbyDoctors = [
  DoctorModel(
    name: "Av. Tecnologico",
    averageReview: 0,
    totalReviews: 0,
    profile: "assets/e1.jpg",
  ),
  DoctorModel(
    name: "Av. Ejercito Nacional",
    averageReview: 0,
    totalReviews: 0,
    profile: "assets/e2.jpg",
  ),
  DoctorModel(
    name: "Las Torres",
    averageReview: 2,
    totalReviews: 0,
    profile: "assets/e3.jpg",
  ),
];
