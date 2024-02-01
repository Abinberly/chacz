class MakeupProduct {
  final int id;
  final String brand;
  final String name;
  final String category;
  final String productType;
  final String imageLink;
  final String description;
  final double price;

  MakeupProduct({
    required this.id,
    required this.brand,
    required this.name,
    required this.category,
    required this.productType,
    required this.imageLink,
    required this.price,
    required this.description
  });

  factory MakeupProduct.fromJson(Map<String, dynamic> json) {
    return MakeupProduct(
      id: json['id'] ?? 0,
      brand: json['brand'] ?? '',
      name: json['name'] ?? '',
      category: json['category'] ?? '',
      productType: json['product_type'] ?? '',
      imageLink: json['image_link'] ?? '',
      price: _parsePrice(json['price']), 
      description: json['description']??'',
    );
  }

  static double _parsePrice(dynamic price) {
    if (price is String) {
      return double.tryParse(price) ?? 0.0;
    } else if (price is num) {
      return price.toDouble();
    }
    return 0.0;
  }
}
