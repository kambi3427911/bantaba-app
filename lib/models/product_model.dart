class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String category;
  final String sellerId;
  final String sellerName;
  final String sellerPhone;
  final List<String> images;
  final bool isFavorite;
  final DateTime createdAt;
  final DateTime updatedAt;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.category,
    required this.sellerId,
    required this.sellerName,
    required this.sellerPhone,
    required this.images,
    this.isFavorite = false,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  // Example of how to convert JSON to Product object
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'].toDouble(),
      category: json['category'],
      sellerId: json['sellerId'],
      sellerName: json['sellerName'],
      sellerPhone: json['sellerPhone'],
      images: List<String>.from(json['images']),
      isFavorite: json['isFavorite'] ?? false,
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  // Example of how to convert Product object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'category': category,
      'sellerId': sellerId,
      'sellerName': sellerName,
      'sellerPhone': sellerPhone,
      'images': images,
      'isFavorite': isFavorite,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}