class Product {
  Product({
    required this.category,
    this.isLiked = false,
    required this.name,
    required this.price,
    required this.rating,
    required this.url,
  });

  final String category;
  bool isLiked;
  final String name;
  final String price;
  final String rating;
  final String url;
}
