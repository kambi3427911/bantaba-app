class User {
  String id;
  String name;
  String email;
  String phone;
  String profileImage;
  DateTime createdAt;
  bool isSeller;
  double sellerRating;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.profileImage,
    required this.createdAt,
    required this.isSeller,
    required this.sellerRating,
  });

  // Additional methods and functionality can be added here
}